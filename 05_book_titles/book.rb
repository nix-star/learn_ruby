class Book
    attr_reader :title
    
    def title=(book_name)
        
        book_name = book_name.downcase
        array = book_name.split(" ")
        
        reserved_words = ["a", "an", "and", "in", "of", "the"]
        
        for n in 1..array.length-1 do
            if !reserved_words.index array[n] #!= nil
                array[n] = array[n].capitalize
            end
        end
        
        array[0] = array[0].capitalize
        @title = array.join(" ")
    end
end
