class ActiveBlocks::Form < ActiveBlocks::Decorator

  include ActiveModel::Validations

  def save

  end

  # Override a validate method of ActiveModel::Validations

  old_validate_method = instance_method(:validate)

  define_method :validate do |arg1=nil,arg2=nil|

    old_validate_method.bind(self).call(context)

  end

end