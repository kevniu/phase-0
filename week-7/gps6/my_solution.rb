# Virus Predictor

# I worked on this challenge [with: Brian Lindgren].
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# Loads a file stored in the same location
# It differs from require in that the path can be relative as opposed to absolute
require_relative 'state_data'

class VirusPredictor

  # initialize instance variables for state_of_origin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # returns predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private

  # method predicts the number of deaths based on population density, rounds down to nearest whole number
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4)
    when @population_density >= 150
      number_of_deaths = (@population * 0.3)
    when @population_density >= 100
      number_of_deaths = (@population * 0.2)
    when @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  # predicts speed of spread based on population density
  def speed_of_spread    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

def death_report(array)
  array.each { |k,v|
    state = VirusPredictor.new(k, v[:population_density], v[:population])
    state.virus_effects
  }
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
#report = VirusPredictor.new("")
#report.death_report(STATE_DATA)
death_report(STATE_DATA)

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#report = VirusPredictor.death_report
#=======================================================================
# Reflection
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The first uses hash rockets to separate keys and values and the second uses symbols as keys. Symbols weren't supported until a later version of Ruby.
What does require_relative do? How is it different from require?
Require relative loads a files stored in the same location. It differs from require in that the path can be relative as opposed to absolute.
What are some ways to iterate through a hash?
We used each to iterate through the hash in the method above. Another method you can use is do.
When refactoring virus_effects, what stood out to you about the variables, if anything?
All the variables were instance variables so they can be accessed by the methods already, there was no need to pass them as arguments.
What concept did you most solidify in this challenge?
Accessing arrays and distinguishing between why methods should be inside or outside a class.
=end