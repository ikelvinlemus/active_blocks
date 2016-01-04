describe ActiveBlocks::Decorator do

  let!(:decorator_class) do
    class Decorator < ActiveBlocks::Decorator
      attribute :name
      attribute :email
    end
    Decorator
  end

  let!(:model) { Struct.new(:name, :email, :address) }

  subject { decorator_class.new(model.new) }

  it { should respond_to(:name) }
  it { should respond_to(:"name=") }
  it { should respond_to(:"email") }
  it { should respond_to(:"email=") }

end