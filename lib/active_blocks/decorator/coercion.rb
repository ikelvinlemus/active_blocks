require 'virtus'

class ActiveBlocks::Decorator

  module Coercion

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods

      def coerce_setter!(name, options={})

        type = options.fetch(:type, nil)
        return unless type

        mod = Module.new do
          define_method(:"#{name}=") { |value| super Virtus::Attribute.build(type).coerce(value) }
        end
        include mod

      end

    end # ClassMethods


  end # Coercion

end