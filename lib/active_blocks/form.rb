class ActiveBlocks::Form < ActiveBlocks::Decorator

  include ActiveModel::Validations

  def persisted?; end

end