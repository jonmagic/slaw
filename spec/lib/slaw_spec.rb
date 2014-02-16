require "spec_helper"

describe Slaw do
  it "has a version" do
    assert_equal "0.0.1", Slaw::VERSION
  end

  describe ".parse" do
    it "returns an instance of Slaw::Recipe" do
      assert Slaw.parse("foo").is_a?(Slaw::Recipe)
    end
  end
end
