describe ActiveBlocks::Form do

  let!(:form) do
    class Form < ActiveBlocks::Form

      attribute :name
      attribute :admin, virtual: true

      validates :name, presence: true

    end
    Form
  end

  let!(:model_class) { Struct.new(:name) }
  let!(:model_instance) { model_class.new }

  subject { form.new(model_instance) }

  it 'invalid' do
    expect(subject.valid?).to be false
  end

end