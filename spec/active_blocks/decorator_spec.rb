describe ActiveBlocks::Decorator do

  class Decorator < ActiveBlocks::Decorator
    attribute :name
    attribute :email
    attribute :admin, virtual: true
  end

  let!(:model) { Struct.new(:name, :email, :address) }

  subject { Decorator.new(model.new) }

  describe '::attribute' do

    it { should respond_to(:name) }
    it { should respond_to(:"name=") }
    it { should respond_to(:"email") }
    it { should respond_to(:"email=") }

  end

  describe '#sync' do

    it 'write the attributes to the model' do
      subject.admin = 1
      subject.name  = 'John Doe'
      subject.email = 'doe@mail.com'

      subject.sync

      expect(subject.model.name).to eq('John Doe')
      expect(subject.model.email).to eq('doe@mail.com')
    end

  end # sync

end