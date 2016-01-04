class ActiveBlocks::Form < ActiveBlocks::Decorator

  include ActiveModel::Validations

  def save
    # TODO
  end

  # Override a validate method of ActiveModel::Validations
  # TODO
  old_validate_method = instance_method(:validate)

  define_method :validate do |context=nil|

    old_validate_method.bind(self).call(context)

  end

end