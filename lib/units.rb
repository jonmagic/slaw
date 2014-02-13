require "yaml"

module Units
  def self.dataset
    @dataset ||= IO.readlines("./lib/units").map do |line|
      YAML.load(line)
    end
  end

  def self.names
    dataset.map {|r| r["name"] }
  end

  def self.abbreviations
    dataset.map {|r| r["abbreviations"] }.flatten
  end

  def self.all
    names + abbreviations
  end
end
