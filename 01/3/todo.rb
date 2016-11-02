class Todo
  attr_reader :status, :text

  def initialize(args)
    @text = args[:text]
    @status = :undone
  end

  def done!
    @status = :done
  end

  def status?(status)
    @status.equal?(status.to_sym)
  end
end