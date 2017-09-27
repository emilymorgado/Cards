defmodule Cards do
#This creates a module called Cards
#This is a common Elixir pattern
#It's a collection of methods or functions
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello
      :world

  """
  #this function is called hello
  #when it's called it will return "hi there!"
  def hello do
    #Has an implicit return
#    the last value will automatically be returned
#    in elixir
    "hi there!"
#    :world
  end

  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    #receive deck above
    
  end
end
