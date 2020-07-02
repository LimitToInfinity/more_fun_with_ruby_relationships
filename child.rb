class Child
  attr_reader :name, :bio_mom, :bio_dad
  attr_accessor :age

  @@all = []

  def initialize(name, age, bio_mom, bio_dad)
    @name = name
    @age = age
    @bio_mom = bio_mom
    @bio_dad = bio_dad

    @@all << self
  end

  def self.all
    @@all
  end

end