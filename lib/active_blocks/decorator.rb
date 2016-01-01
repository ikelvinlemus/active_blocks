require 'active_blocks/decorator/setup'
require 'active_blocks/decorator/schema'

class ActiveBlocks::Decorator

  include Setup
  include Schema

  class << self

    def attribute(name, options={}, &block)

      definitions[name.to_sym] = build_definition(name, options)

      mod = Module.new do
        define_method(name)       { instance_variable_get("@#{name}") }
        define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
      end
      include mod

    end # attribute

  end # self

end