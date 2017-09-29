Cards
  #This creates a module called Cards
  #This is a common Elixir pattern
  #It's a collection of methods or functions

Hello
    #Has an implicit return
    #the last value will automatically be returned
    #in elixir
      #this function is called hello
      #when it's called it will return "hi there!"

Create Deck
    #list comprehension to iterate
    #like a for loop
    #for every element, do this
    #comprehension is a mapping function
    #every time we pass in an item
    #the return gets put into a new array
    #the new array is returned from the
    #comprehension
    #arrow is backward, but is pointing
    #logically
    # for suit <- suits do
    #   suit
    #   # "Is this a map?" (for testing)
    # end


    #NAIVE SOLUTION/BREAKS CODE
    #nested comprehensions will create
    #an aray for each value in values
    #after each inner comprehension
    #finishes running, it returns
#     cards = for value <- values do
#       for suit <- suits do
#         #injects value and suit into strings
#         "#{value} of #{suit}"
#       end
#     end
#     List.flatten(cards)

    #GOOD SOLUTION
    #one loop that returns every possible
    #combination
    
    
    
Shuffle
    #receive deck above
    #arity: number of args a func accepts
    #Cards.shuffle has an arrity of 1
    #Go to elixir docs and find Enum: https://hexdocs.pm/elixir/Enum.html#content
    #Enum works with lists of data
    
Contains?
    #if a method is returning a bool,
    #put a ? in it
    #card, is a string: "King of Hearts"
    #no indexOf() methods in elixir
        
Save
    #turns deck to an object, in erlang lang,
    #that can be saved to the file system
    #not converting to binary
    #filename the file's name
    #binary is the format
    
Other
#in Elixir we never modify an existing var
#every modification returns a new datastructure
#immutability

#in Elixir, variable assignment uses
#pattern matching
#Ex: colors = [color1, color2] = ["red", "blue"]