require "spec_helper"

describe Slaw::Parser do
  it "parses list of ingredients" do
    ingredients = Slaw::Parser.new.parse("1 cup flour\n2 tbsp butter")
    flour = ingredients[0]
    assert_equal 1,        flour[:quantity].to_i
    assert_equal "cup",    flour[:unit].to_s
    assert_equal "flour",  flour[:ingredient].to_s
    butter = ingredients[1]
    assert_equal 2,        butter[:quantity].to_i
    assert_equal "tbsp",   butter[:unit].to_s
    assert_equal "butter", butter[:ingredient].to_s
  end

  it "parses ingredient without unit" do
    ingredients = Slaw::Parser.new.parse("4 boneless, skinless, chicken breasts")
    assert_equal 4, ingredients[0][:quantity].to_i
    assert_equal "boneless, skinless, chicken breasts", ingredients[0][:ingredient].to_s
  end

  it "parses fractional units" do
    ingredients = Slaw::Parser.new.parse("3/4 c. chopped onion")
    assert_equal 3, ingredients[0][:quantity][:north].to_i
    assert_equal 4, ingredients[0][:quantity][:south].to_i
    assert_equal "c.", ingredients[0][:unit].to_s
    assert_equal "chopped onion", ingredients[0][:ingredient].to_s
  end
end
