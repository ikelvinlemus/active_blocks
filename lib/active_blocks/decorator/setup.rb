class ActiveBlocks::Decorator

  module Setup

    attr_reader :attributes

    def initialize(model, attributes={})
      @attributes = {}
      @model      = model

      setup_attributes(attributes)
    end

    def model
      @model
    end

    def setup_attributes(attributes)
      attributes.each do |k, v|
        setup_attribute(k, v)
      end
    end

    def setup_attribute(name, value)
      return false unless respond_to?("#{name}=")

      send("#{name}=", value)
    end

  end # Setup

end