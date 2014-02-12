require_relative "../lib/units"
require "minitest/autorun"

describe Units do
  describe ".names" do
    it "returns names" do
      assert Units.names.include?("cup")
    end
  end

  describe ".abbreviations" do
    it "returns names" do
      assert Units.abbreviations.include?("tbsp")
    end
  end

  describe ".all" do
    it "returns names" do
      assert Units.all.include?("tbsp")
      assert Units.all.include?("tablespoon")
    end
  end
end
