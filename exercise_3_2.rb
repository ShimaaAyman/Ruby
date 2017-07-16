#[4] Continue in the Document class.
# add a 'words' function that returns the content of the document in the form of
# an array of words.
# Example: if content is "some more content here" then the function should return
# ["some", "more", "content", "here"]

#[5] Read about blocks in ruby [also check the ruby examples provided]
# add a function each_word that loops on the words in the document - you must use
# blocks
# This function is called like this:
# document.each_word do |word|
#  puts word
# end


class Document

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
    

end
end





a=Document.new({:author => "someone", :title => "my book", :content => "this is the content of my book"})

arr[]
arr=a.word(a)
