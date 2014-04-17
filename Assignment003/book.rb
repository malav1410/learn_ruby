class Book < Library
  attr_accessor :name, :author, :book_id, :taken, :taken_by 

  def self.view_all_books
    books = @load_library["books"]
    puts books
  end
end