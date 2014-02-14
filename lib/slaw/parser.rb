class Slaw
  class Parser < Parslet::Parser

    def units
      eval Units.all.map {|r| "str('#{r}')"}.join(' | ')
    end

    rule(:quantity)   { fraction | integer }
    rule(:fraction)   { integer.as(:north) >> divider >> integer.as(:south) }
    rule(:integer)    { match("[0-9]").repeat(1) }
    rule(:divider)    { str("/") }

    rule(:unit)       { units }
    rule(:unit?)      { units.maybe }

    rule(:ingredient) { ingredient_part.repeat(1) }
    rule(:ingredient_part) { match("[a-zA-Z]").repeat(1) >> comma? >> space? }

    rule(:space)      { match("\s").repeat(1) }
    rule(:space?)     { space.maybe }

    rule(:newline)    { match("\n").repeat(1) }
    rule(:newline?)   { newline.maybe }

    rule(:comma)    { str(",") }
    rule(:comma?)   { comma.maybe }

    rule(:instruction) {
      quantity.as(:quantity) >> space? \
        >> unit?.as(:unit) >> space? \
        >> ingredient.as(:ingredient) \
        >> newline?
    }

    rule(:instructions) {
      instruction.repeat(1)
    }

    root(:instructions)
  end
end
