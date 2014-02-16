require "spec_helper"

describe Slaw::Recipe do
  def recipe
    markdown  = "# Foo Bar Casserole\n"
    markdown += "\n"
    markdown += "## Ingredients\n"
    markdown += "\n"
    markdown += "* 2 cups foo\n"
    markdown += "* 1/3 tsp bar\n"
    markdown += "\n"
    markdown += "## Instructions\n"
    markdown += "\n"
    markdown += "1. Put the foo in a pot on medium heat.\n"
    markdown += "1. Cook for 30 minutes and stir in bar.\n"

    Slaw::Recipe.new(markdown)
  end

  describe "#title" do
    it "returns title from markdown" do
      assert_equal "Foo Bar Casserole", recipe.title
    end
  end

  describe "#unparsed_ingredient_instructions" do
    it "returns ingredient instructions sans bullet points" do
    end
  end

  describe "#unparsed_cooking_instructions" do
    it "returns cooking instructions sans numbered list" do
    end
  end
end
