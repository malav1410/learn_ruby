load 'library.rb'

yaml_file = "library.yml"
library = Library.new(yaml_file)
library.start()