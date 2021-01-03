
# In this tutorial, our goal is to create a simple Book class. We'll want it to have properties like a title, an author, a page count, etc. We'd also like the class to somehow be able to keep track of all of the genres of all of the Books we create. Finally, we'll give our books the total non-sensical ability to turn their own pages.
# initialize method = The initialize method is what is known as a "hook" or a "callback". In other words, it is a method that gets triggered automatically when something else happens. In the case of initialize, it gets triggered when we call .new on a class. It also happens to be the method that we can pass arguments to when initializing a new instance of a class.
# Instance variables are preceded with an "@" symbol, and are in scope within an instance of a class. This means that any method within an instance has access to any instance variable.
# "getter" = call it this because, well, it "gets" a property for us
# "setter" = methods that allow us to set instance variables. all are named like this: property=
# getters and setters tend to come in pairs


class Book
    # our simple class is looking kind of, umm, long, no?
    # We seem to have a bunch of setters and getters that look really, really similar aside from their name. There's got to be a better way.
    #And there is = Attribute Accessors and Attribute Readers and writers

    attr_accessor :author, :page_count, :genre # macro sets up a readre and writer for each of these in one line of code
    attr_reader :title #just needs a reader...does not need a writer as title is in the initialize method below

    def initialize(title)
        @title = title
    end

    # def title # getter method aka reader
    #     @title
    # end

    # def author=(author) # setter method aka writer
    #     @author = author
    # end

    # def author # getter
    #     @author
    # end

    # def page_count=(num)
    #     @page_count = num
    # end
    
    # def page_count
    #     @page_count
    # end

    # def genre=(genre)
    #     @genre = genre
    # end
    
    # def genre
    #     @genre
    # end

    # OOP gives us the opportunity to encapsulate both data like above and behavior like below within our classes. Here, we want to be able to make our books turn their pages.
    def turn_page
        puts "Flipping the page...wow, you read fast!" # test asked for this so here it is
    end
end 

# book = Book.new("Some Title")
# book.turn_page
# => "Flipping the page...wow, you read fast!" 