module MediawikiSelenium
  # exception for when environment configuration is missing a looked up value
  class ConfigurationError < StandardError
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def to_s
      "missing configuration for #{name}"
    end
  end
end
