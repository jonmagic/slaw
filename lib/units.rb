require "glean"

module Units
  DATASET = Glean::Dataset.new "jonmagic/units_of_measurement"

  def self.names
    DATASET.map &:name
  end

  def self.abbreviations
    DATASET.map(&:abbreviations).flatten
  end

  def self.all
    names + abbreviations
  end
end
