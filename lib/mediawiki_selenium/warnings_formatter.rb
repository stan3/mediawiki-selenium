require 'cucumber/formatter/console'

module MediawikiSelenium
  # cucumber formatter to print warnings after each feature is run
  class WarningsFormatter
    include Cucumber::Formatter::Console

    def initialize(_runtime, io, _options)
      @io = io
      @warning_counts = Hash.new(0)
    end

    def after_feature(feature)
      return unless feature.mw_warnings.any?
      feature.mw_warnings.each do |type, messages|
        messages.each { |msg| @io.puts format_string(msg, :pending) }
        @warning_counts[type] += messages.length
      end
      @io.puts
    end

    def after_features(_features)
      return unless @warning_counts.any?
      @warning_counts.each do |type, count|
        message = "#{count} warning#{count > 1 ? 's' : ''}"
        message += " due to #{type}" unless type == :default
        @io.puts format_string(message, :pending)
      end
    end

    def before_feature(feature)
      feature.extend(FeatureWarnings)
    end

    # methods to extend feature for storing warnings
    module FeatureWarnings
      def mw_warn(message, type = :default)
        mw_warnings[type] ||= []
        mw_warnings[type] << message
      end

      def mw_warnings
        @__mediawiki_warnings ||= {}
      end

      def mw_warning_messages
        mw_warnings.map(&:values).flatten
      end
    end
  end
end
