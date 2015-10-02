
class BookDatabase
    
    def set_book books 
        @books = books
    end
    
    def find book 
        @books.key(book)
    end
 
end


fav_books = BookDatabase.new
fav_books.set_book = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }   
  
_books.set_book = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }  
puts books.find 100
    
