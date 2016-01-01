class ActiveBlocks::Decorator

  module Attributes

    # skip virtual attributes
    #
    module DefinitionsEach

      def each
        super() do |name, definition_class|
          next if definition_class.options[:virtual]
          yield name, definition_class
        end
        self
      end # each

    end # DefinitionsEach


  end # Attributes

end