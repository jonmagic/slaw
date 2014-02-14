# Slaw

Slaw is a recipe parser implemented in ruby. Let's make a spaghetti sau.

```ruby
markdown = %q{
# Spaghetti Sauce

## Ingredients

2 tbsp extra virgin olive oil
medium onion chopped
3 cloves of garlic finely chopped
1/2 teaspoon salt
1/2 teaspoon freshly ground pepper
2 tbsp Italian seasoning
a tablespoon of tomato paste
3/4 cup red wine
48oz can whole San Marzano tomatoes in sauce

## Instructions

1. Heat 8 quart sauce pan on medium heat and add olive oil.
1. Saute onions until translucent and then add garlic and saute for 1 minute.
1. Add salt and pepper, Italian seasonings, and tomato paste, stir for 1 minute.
1. Add wine and stir until wine is reduced by half.
1. Add tomatoes and sauce to pan, breaking up the tomatoes.
1. Simmer for one hour or until at desired consistency.
1. Serve chunky or cool and blend for a smoother sauce.
}

recipe = Slaw.parse(recipe_text)
=> <Slaw::Recipe Spaghetti Sauce>

ingredient_with_instructions = recipe.ingredient_instructions.first
=> <Slaw::IngredientInstruction 2 tbsp extra virgin olive oil>
ingredient_with_instructions.measurement
=> <Slaw::Measurement 2 tbsp>
ingredient_with_instructions.measurement.quantity
=> 2.0
ingredient_with_instructions.measurement.unit
=> <Slaw::Unit tablespoon>
ingredient_with_instructions.ingredient
=> <Slaw::Ingredient extra virgin olive oil>

cooking_instruction = recipe.cooking_instructions.first
=> <Slaw::CookingInstruction Heat 8 quart sauce pan on medium heat and add olive oil.>
cooking_instruction.temperature
=> <Slaw::Temperature medium heat>
recipe.hardware
=> [<Slaw::Hardware 8 quart sauce pan>]

```

## Tests

```bash
bundle exec rake
```

## Update units of measurement

```bash
gem install glean
glean export jonmagic/units_of_measurement --format=json > lib/slaw/units
```
