require "iso-639-data/version"
require "yaml"

module ISO_639_DATA
  class Error < StandardError; end

  ISO_639_2 = lambda do
    YAML.load(File.read(File.join(File.dirname(__FILE__), '2.yaml')))
  end.call.freeze

  ISO_639_3 = lambda do
    dataset = YAML.load(File.read(File.join(File.dirname(__FILE__), '3.yaml')))
  end.call.freeze

  class << self
    def codes
      (ISO_639_2.keys << ISO_639_3.keys).flatten.uniq
    end
  end
end