require_relative "../lib/slaw"
require "minitest/autorun"

describe Slaw do
  it "has a version" do
    assert_equal Slaw::VERSION, "0.0.1"
  end
end
