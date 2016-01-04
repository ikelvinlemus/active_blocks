class ActiveBlocks::Decorator

  module Sync

    # Write all attribute values to the model
    # TODO: improvement
    def sync
      schema.each do |attribute, definition|
        value = send(attribute)
        model.send(:"#{attribute}=", value)
      end
    end

  end

end