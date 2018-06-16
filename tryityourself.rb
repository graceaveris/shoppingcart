
#CHALLENGE / SUCCESS

# Given the two empty classes below, write code for your classes so that you can fulfill the driver code beneath. Don't change the driver code.

# class Cart
# end

# class Product
# end

#initializes a cart for the user
class Cart
  @@total_amount = 0 
  def initialize
  end

#this is the method to add the total to the cart
  def add_product(newproduct)#newproduct is the parameter for the item thats being added to the cart
    @@total_amount += newproduct.price
  end#this can only be called AFTER you have added the products. Creating a new product does ot automatically add it to the cart... This is an optimization that woudld need to be made.

#this is the method that returns the total price as calculated
#this below is needed! to return a class variable
  def total_amount
  	@@total_amount
  end
end

#product class, which can add items
class Product
	attr_reader :price, :name
	def initialize(name, price)
	@price = price
	@name = name
  end
end

#THIS BELOW IS THE DRIVER CODE, DONT CHANGE AT ALL!
#below is like teh database of products offered by the store
chromecast = Product.new("Chrome Cast", 300) # name and price
monitor = Product.new("Samsung Monitor", 150)
appletv = Product.new("Apple TV", 239)
hifi = Product.new("Bose Hifi System", 950)

#this is fone as you can create one cart and add to it. What if you want to create multipe carts? Or maybe ts isnt required within ruby framework... Maybe you only have one user in each interface at a time? I geuss this is the case?
my_cart = Cart.new
my_cart.add_product(chromecast)
my_cart.add_product(monitor)
p my_cart.total_amount#this step npw workiing! 
