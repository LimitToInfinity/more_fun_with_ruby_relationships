class BioMom
  attr_reader :name
  attr_accessor :hair_color

  @@all = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color

    @@all << self
  end

  def self.all
    @@all
  end

  def children
    Child.all.select { |child| child.bio_mom == self }
  end

  def number_of_children
    children.count
  end

  def average_children_age
    sum_of_ages = children.map { |child| child.age }.sum
    sum_of_ages.to_f / number_of_children
  end

  def partners
    # returns a unique list of all bio_dads a bio_mom
    # has had children with
  end

end