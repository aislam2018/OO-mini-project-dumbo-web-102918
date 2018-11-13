class User
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def my_recipe_cards
    my_recipe_cards = RecipeCard.all.select {|card| card.user == self}
  end
  def recipes
    my_recipe_cards.collect { |card| card.recipe }
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end
  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end
  def my_allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end
  def allergens
    my_allergens.collect { |allergen| allergen.ingredient}
  end


  def self.all
    @@all
  end



end
