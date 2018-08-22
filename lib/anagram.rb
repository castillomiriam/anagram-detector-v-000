# Your code goes here!

class Anagram
  attr_accessor :word
  #:word is an attribute of each Anagram instance


#attr_accessor is a macro for creating the reader and the writer methods
#specifically for the attribute that it's been passed (:word)
#macro is something that generates code for you

  def initialize(word)
    @word = word
  end

  #created a method called initialize, passed in an argument
  #of 'word' which is a string, can be any word technically
  #@word has to remain the same because your macro is going to
  #search for the 'word' instance variable
  #created an instance variable of word, set it equal to the argument (word)


  def match(array)
    array.find_all do |term|
      term.split("").sort == @word.split("").sort
    end

    #created a class method called match, passed in an argument of 'array' (is literally an array)
    #iterated over the 'array' array,
    #used the enumerable .find_all, returns an array containing all elements which return true. 
    #split a word into an array of letters using some_word.split(""). compared the two arrays using the ==. "
    #the first is the array of terms, the second is the instance variable word

  end

end

#listen = Anagram.new("listen") #class method, creates an Anagram object , listen is equal to an instance of the Anagram class
#takes an argument whenever you have an initialize method,
#initialize sets the value of an attribute for the object that is being created, attributes are instance variables :word

#listen is an object of the anagram class and it has an attribute called word whose value is listen.


#listen.match(%w(enlists google inlets banana))
