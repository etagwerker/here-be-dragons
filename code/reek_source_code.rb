module Reek
  module SmellDetectors
    class UncommunicativeVariableName < BaseDetector
      #
      # Checks the given +context+ for uncommunicative names.
      #
      # @return [Array<SmellWarning>]
      #
      def sniff
        variable_names.select do |name, _lines|
          uncommunicative_variable_name?(name)
        end.map do |name, lines|
          smell_warning(
            lines: lines,
            message: "has the variable name '#{name}'",
            parameters: { name: name.to_s })
        end
      end
    end
  end
end