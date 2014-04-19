class Book
  attr_accessor :name, :author, :id, :taken, :taken_by

  def is_available_to_issue?
    if taken == false
      return true
    else
      return false
    end
  end
end