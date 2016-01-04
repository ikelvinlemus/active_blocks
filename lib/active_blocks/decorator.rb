require 'active_blocks/decorator/setup'
require 'active_blocks/decorator/schema'
require 'active_blocks/decorator/sync'
require 'active_blocks/decorator/coercion'

class ActiveBlocks::Decorator

  include Setup
  include Schema
  include Sync
  include Coercion


  class << self

    def attribute(name, options={}, &block)

      definitions[name.to_sym] = build_definition(name, options)

      mod = Module.new do
        define_method(name)       { instance_variable_get("@#{name}") }
        define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
      end
      include mod

      coerce_setter!(name, options)

    end # attribute

  end # self


end