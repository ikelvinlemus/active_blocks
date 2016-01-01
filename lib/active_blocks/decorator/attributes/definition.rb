class ActiveBlocks::Decorator

  module Attributes

    class Definition

      attr_reader :name, :options

      def initialize(name, options={})
        @name    = name
        @options = options
      end

    end # Definition

  end # Attributes
end