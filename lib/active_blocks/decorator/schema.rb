require 'active_blocks/decorator/attributes/definition'
require 'active_blocks/decorator/attributes/definitions_each'

class ActiveBlocks::Decorator

  module Schema

    def self.included(base)
      base.extend(ClassMethods)
    end

    def schema
      self.class.definitions.extend(Attributes::DefinitionsEach)
    end

    module ClassMethods

      def definitions
        @definitions ||= {}
      end

      def build_definition(name, options)
        Attributes::Definition.new(name, options)
      end

    end  # ClassMethods

  end # Schema

end