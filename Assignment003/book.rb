class Book < Library
  
  def self.view_all_books
    books = @load_library["books"]
    puts books
  end
end