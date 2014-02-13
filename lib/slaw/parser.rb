require_relative "units"

class Slaw
  class Parser < Parslet::Parser
    rule(:quantity)   { match("[0-9]").repeat(1) }
    rule(:unit)       { match("[a-z]").repeat(1) }
    rule(:ingredient) { match("[a-z]").repeat(1) }

    rule(:space)      { match("\s").repeat(1) }
    rule(:space?)     { space.maybe }

    rule(:newline)    { match("\n").repeat(1) }
    rule(:newline?)   { newline.maybe }

    rule(:instruction) {
      quantity.as(:quantity) >> space? \
        >> unit.as(:unit) >> space? \
        >> ingredient.as(:ingredient) \
        >> newline?
    }

    rule(:instructions) {
      instruction.repeat(1)
    }

    root(:instructions)
  end
end
