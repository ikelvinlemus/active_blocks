class ActiveBlocks::Operation

  class_attribute :form_class
  self.form_class = Class.new(ActiveBlocks::Form)

  # @abstract
  #
  # @raise [NotImplementedError]
  def execute
    fail NotImplementedError
  end

  class << self

    # @todo
    def run!
      false
    end

    # @example
    #   form do .. end # define a form
    def form(&block)
      return form_class unless block_given?

      self.form_class.class_eval(&block) if block_given?
    end

  end # self

  # @return [ActiveBlocks::Form]
  def form
    @form ||= self.class.form_class.new(nil)
  end

end