require "parslet"

class Slaw < Parslet::Parser
  VERSION = "0.0.1"

  rule(:quantity)   { match("[0-9]").repeat(1) }
  rule(:unit)       { match("[a-z]").repeat(1) }
  rule(:ingredient) { match("[a-z]").repeat(1) }

  rule(:space)      { match("\s").repeat(1) }
  rule(:space?)     { space.maybe }

  rule(:expression) {
    quantity.as(:quantity) >> space? \
      >> unit.as(:unit) >> space? \
      >> ingredient.as(:ingredient)
  }
  root(:expression)
end
