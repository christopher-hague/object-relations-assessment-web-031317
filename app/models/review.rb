class Review
  attr_accessor :restaurant, :content, :customer

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    restaurant.reviews << content
    restaurant.customers << customer
    @@all << self
  end

end
