class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |customer| "#{customer.first_name} #{customer.last_name}"  == name }
  end

  def self.find_all_by_first_name(name)
    @@all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    @@all.map { |customer| "#{customer.first_name} #{customer.last_name}" }
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
    new_review
  end
end
