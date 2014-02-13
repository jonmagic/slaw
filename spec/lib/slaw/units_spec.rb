require "spec_helper"

describe Slaw::Units do
  describe ".names" do
    it "returns names" do
      assert Slaw::Units.names.include?("cup")
    end
  end

  describe ".abbreviations" do
    it "returns names" do
      assert Slaw::Units.abbreviations.include?("tbsp")
    end
  end

  describe ".all" do
    it "returns names" do
      assert Slaw::Units.all.include?("tbsp")
      assert Slaw::Units.all.include?("tablespoon")
    end
  end
end
