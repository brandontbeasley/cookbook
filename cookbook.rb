class Cookbook
  attr_accessor :title
  attr_reader :recipes
  
  def initialize(title)
    @title = title
    @recipes = []
  end
  
  def add_recipe(recipe)
    @recipes << recipe
    "Added a recipe to the collection: #{recipe.title}"
  end
  
  def recipe_titles
    @recipes.each { |recipe| puts "#{recipe.title}" }
  end
  
  def recipe_ingredients
    @recipes.each { |recipe| 
      "These are the ingredients for #{recipe.title} : #{recipe.ingredients.join(", ")} "
      }
  end
    
  def print_cookbook
    @recipes.each { |recipe| "#{recipe.title}: had #{recipe.ingredients}: do #{recipe.steps}"
     }
  end  
    
end


class Recipe
  attr_accessor :title
  attr_accessor :ingredients
  attr_accessor :steps
  
  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end
  
  def print_recipe
    n = 0
    print "#{@title} has #{@ingredients.join(", ")}."
    @steps.each { |step| 
      puts " #{n+1}. #{@steps[n]}"
      n + 1
    }
  end
  
end

