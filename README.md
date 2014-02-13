# Slaw

Slaw is a recipe parser implemented in ruby. Let's make a roux.

```ruby
ingredients = Slaw::Parser.new.parse("1 cup flour\n3 tbsp butter")
first = ingredients[0]

first[:quantity].to_i
=> 1

first[:unit].to_s
=> "cup"

first[:ingredient].to_s
=> "flour"

second = ingredients[1]

second[:quantity].to_i
=> 3

second[:unit].to_s
=> "tbsp"

second[:ingredient].to_s
=> "butter"
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
