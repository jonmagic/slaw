module Slaw
  class Recipe

    # Public: Initialize recipe from Markdown with this structure:
    #
    #   # Foo Bar Casserole
    #
    #   ## Ingredients
    #
    #   * 2 cups foo
    #   * 1/3 tsp bar
    #
    #   ## Instructions
    #
    #   1. Put the foo in a pot on medium heat.
    #   1. Cook for 30 minutes and stir in bar.
    #
    # method :new
    # Returns a Slaw::Recipe.
    def initialize(markdown)
      @markdown = markdown
    end

    def title
      require "pry"
      binding.pry
    end

    private

    def parsed_recipe
      doc = Nokogiri.parse(html)
    end

    def html
      string  = "<h1>Foo Bar Casserole</h1>\n"
      string += "<h2>Ingredients</h2>\n"
      string += "<ul>\n"
      string += "  <li>2 cups foo</li>\n"
      string += "  <li>1/3 tsp bar</li>\n"
      string += "</ul>\n"
      string += "<h2>Instructions</h2>\n"
      string += "<ol>\n"
      string += "  <li>Put the foo in a pot on medium heat.</li>\n"
      string += "  <li>Cook for 30 minutes and stir in bar.</li>\n"
      string += "</ol>\n"
      string
    end
  end
end
