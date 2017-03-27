# #reviews, #customers
class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    @@all << self
  end

  # def reviews
  #   self.reviews
  # end
  #
  # def customers
  #   self.customers
  # end

end
