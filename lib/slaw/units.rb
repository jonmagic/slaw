require "yaml"

class Slaw
  module Units
    def self.dataset
      @dataset ||= IO.readlines("./lib/slaw/units").map do |line|
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
      names + abbreviations + ["can"]
    end
  end
end
