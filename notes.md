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

#Atom
:atom
Common examples: :ok, :error
Think of them as strings
The only difference is that strings can be displayed to the user


#Pattern Matching Continued
Given the following:
["red", color] = ["green", "blue"]
Elixir will fail to run because the hard-coded
"red" does not match exactly with the hard-coded "green"

Even a case statement pattern matches:
    case File.read(filename) do  //runs method and checks
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That files does not exist"
    end


Underscore
_reason Tells Elixir that we know an unused variable is there


#Pipe Operator
We started with this:
  def create_hand(hand_size) do
    deck = Cards.create_deck
    deck = Cards.shufle(deck)
    hand = Cards.deal(deck, hand_size)
  end
  
And converted it to this:
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
  
The pipe operator allows no assignment to temp variable
It automatically passes data on to subsequent methods
as the first argument

Tests run @doc ##Examples as if they were on the
command line, and gives you a result!


#Maps

You can create a map with:
map_name = %{key: value, key_2: value_2}
You can access elements with dot notation
dot = map_name.key sets dot to the value
And you can pattern match
%{key: dot} = map_name
dot produces value

Remember, you can't change data! Everything
is immutable

Use map module in Elixir docs for tools that 
manipulate maps. Remember, you are always creating
a new copy, not changing the existing map


#Ecto:
query = User.find_where([where: user.age > 10, where: user.subscribed == true])
or
query = User.find_where(where: user.age > 10, where: user.subscribed == true)
or
query = User.find_where where: user.age > 10, where: user.subscribed == true