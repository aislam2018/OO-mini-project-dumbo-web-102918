class Recipe
  @@all = []
  attr_accessor :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def users
    my_recipe_cards.collect { |card| card.user}
  end

  def my_recipe_cards
    RecipeCard.all.select { |card| card.recipe == self}
  end
  def ingredients
    recipe_ings = RecipeIngredient.all.select { |ri| ri.recipe == self}
    recipe_ings.collect { |ri| ri.ingredient }
  end


  def self.all
    @@all
  end
end
