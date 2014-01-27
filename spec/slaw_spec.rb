require_relative "../lib/slaw"
require "minitest/autorun"

describe Slaw do
  it "has a version" do
    assert_equal "0.0.1", Slaw::VERSION
  end

  it "parses expression" do
    slaw = Slaw.new.parse("1 cup flour")
    assert_equal 1,       slaw[:quantity].to_i
    assert_equal "cup",   slaw[:unit].to_s
    assert_equal "flour", slaw[:ingredient].to_s
  end
end
