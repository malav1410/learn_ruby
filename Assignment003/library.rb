require "./book"

class Library
  
  def initialize(yaml_file)
    @load_library = YAML.load_file(yaml_file)
  end
  
  def start
    puts "----------"
    puts "Welcome to Library management tool. Choose an option."
    puts "----------"
    puts "1. View all books."
    puts "2. View all members."
    puts "3. Issue book to a member."
    puts "4. Check book availability."
    puts "5. Accept book returned by a member."
    puts "6. Add book."
    puts "7. To exit\n\n"
    puts "Choose your option"
    
    books = Book.view_all_books

    # Choose option to manage library 
    #option = gets.chomp
    case option
    when "1"
      # TODO display all books from library
    when "2"
      # TODO display all members of library
    when "3"
      # TODO assign book to a member
      # if already assign than choose again other book
    when "4"
      # TODO if book "taken" is true then show book is not available else show avail...
    when "5"
      # TODO enter book id returned by member and make taken value false and taken by nil
    when "6"
      # TODO ask for book name and book author for to add new book. In this default value for taken should be false
      # And taken_by value should be nil
    when "7"
      # exit
    else
      puts "Please enter valid number"
    end 
  
  end
end