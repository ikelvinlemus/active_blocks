class ActiveBlocks::Decorator

  require 'active_blocks/decorator/setup'
  include Setup

  class << self

    def attribute(name, options={})

      mod = Module.new do
        define_method(name)       { instance_variable_get("@#{name}") }
        define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
      end
      include mod

    end # attribute

  end # self

end