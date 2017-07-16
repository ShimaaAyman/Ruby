# Mixing in modules
#[6] Create a method that returns today's date. Method name should be 'current_date'
# This method should be in a module called 'Generic'.
# Try mixing in this module into the Document class
# Now use this method to create another method that returns
# The tite of the document and today's date like below:
# "document_title 2014-06-22". This method should be called 'title_with_date'


#[7] we would like to add a function that replaces a word with another
# replace_word(old_word, new_word)

#Metaprogramming
#[8] instead of calling document.replace_word(old,new) we would like to be able to
# do something like this: document.replace_book('pen') where book is the old word
# and pen is the new word. This should work on any word (not just book).
# hint:  'method_missing'

require 'time'

module Generic
   def current_date
       time1=Time.now
       return time1
   end
end


class Document

include Generic

attr_accessor :author, :title , :content

def initialize(attr)
   @author=attr[:author]
   @title=attr[:title]
   @content=attr[:content]
end

def initialize(attr)
   @author=attr[:author]
   @title=attr[:title]
   @content=attr[:content]
end

def + (b)
   @author=self.author
   @title=self.title

   if b.is_a? String
      self.content.concat(b)
   else
      self.content.concate(b.content)
      
   end
   return self
end 
end 

def word (a)
    arr=[]
    arr=a.content.split(" ").map {|i|i.to_s}

end

def each_word (a)
 arr=[]
 arr=a.word(a)
   arr.each do |word|
   yield word
   end
end


def title_with_date (a)
    #Generic::current_date
    date=current_date
    date=Date.parse(date)
    date.strftime("%a, %d %b %Y")
    str=a.title" ".concat(date)
    return str
end

def replace_word(old_word, new_word , a)
    arr=[]
    arr=a.word(a)
    arr.each do |word|
    if
     arr[word]==old_word
     arr[word]=new_word
    end
  end
end
end





a=Document.new({:author => "someone", :title => "my book", :content => "this is the content of my book"})

str=a.title_with_date(a)
a.replace_word("content" , "gggggg" , a)


