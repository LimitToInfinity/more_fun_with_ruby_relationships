class BioDad
  attr_reader :name
  attr_accessor :beard

  @@all = []

  def initialize(name, beard)
    @name = name
    @beard = beard

    @@all << self
  end

  def self.all
    @@all
  end

  def children
    Child.all.select { |child| child.bio_dad == self }
  end

  def number_of_children
    children.count
  end

  def average_children_age
    sum_of_ages = children.map { |child| child.age }.sum
    sum_of_ages.to_f / number_of_children
  end

end