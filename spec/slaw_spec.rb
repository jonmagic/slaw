require_relative "../lib/slaw"
require "minitest/autorun"

describe Slaw do
  it "has a version" do
    assert_equal "0.0.1", Slaw::VERSION
  end

  it "parses ingredient" do
    ingredients = Slaw.new.parse("1 cup flour")
    flour = ingredients.first
    assert_equal 1,       flour[:quantity].to_i
    assert_equal "cup",   flour[:unit].to_s
    assert_equal "flour", flour[:ingredient].to_s
  end

  it "parses ingredient list" do
    ingredients = Slaw.new.parse("1 cup flour\n2 tbsp butter")
    flour = ingredients[0]
    assert_equal 1,        flour[:quantity].to_i
    assert_equal "cup",    flour[:unit].to_s
    assert_equal "flour",  flour[:ingredient].to_s
    butter = ingredients[1]
    assert_equal 2,        butter[:quantity].to_i
    assert_equal "tbsp",   butter[:unit].to_s
    assert_equal "butter", butter[:ingredient].to_s
  end
end
