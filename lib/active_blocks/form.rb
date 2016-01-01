class ActiveBlocks::Form < ActiveBlocks::Decorator

  attr_reader :model

  include ActiveModel::Validations

  def save

  end

  def persisted?; end

end