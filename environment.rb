# Build out Many to Many relationship
# Build all 3 classes
# Connect all in environment
# Add pry to environment

require 'pry'

require_relative './bio_dad'
require_relative './bio_mom'
require_relative './child'

john = BioDad.new('John', false)
bob = BioDad.new('Bob', true)

stacey = BioMom.new('Stacey', 'brown')
angela = BioMom.new('Angela', 'black')

joe = Child.new('Joe', 3, stacey, john)
molly = Child.new('Molly', 7, stacey, john)
christy = Child.new('Christy', 4, stacey, bob)
morgan = Child.new('Morgan', 1, angela, bob)

binding.pry