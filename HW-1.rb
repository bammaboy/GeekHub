# Define a method sum which takes an array of integers as an argument and
# returns the sum of its elements. For an empty array it should return zero.
def sum(arr)
	sum = 0
	arr.each {|x| arr+= x}
	sum
end

# Define a method max_2_sum which takes an array of integers as an argument and
# returns the sum of its two largest elements. For an empty array it should
# return zero. For an array with just one element, it should return that element.
def max_2_sum(arr)
	return 0 if arr.empty?
	return arr[0] if arr.length == 1
	sum = arr.sort
	sum[-1] + sum[-2]
end

# Define a method sum_to_n? which takes an array of integers and an additional
# integer, n, as arguments and returns true if any two distinct elements in the
# array of integers sum to n. An empty array or single element array should
# both return false.
def sum_to_n?()

end

# Define a method hello(name) that takes a string representing a name and
# returns the string "Hello, " concatenated with the name.
def hello(name)
	"Hello, #{name}"
end

# Define a method starts_with_consonant?(s) that takes a string and returns
# true if it starts with a consonant and false otherwise. (For our purposes, a
# consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for
# both upper and lower case and for nonletters!
def starts_with_consonant? (s)
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true
# if the string represents a binary number that is a multiple of 4.
def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Define a class BookInStock which represents a book with an isbn number, isbn,
# and price of the book as a floating-point number, price, as attributes. The
# constructor should accept the ISBN number (a string) as the first argument and
# price as second argument, and should raise ArgumentError (one of Ruby's
# built-in exception types) if the ISBN number is the empty string or if the
# price is less than or equal to zero.
#
# Include the proper getters and setters for these attributes. Include a method
# price_as_string that returns the price of the book with a leading dollar sign
# and trailing zeros, that is, a price of 20 should display as "$20.00" and a
# price of 33.8 should display as "$33.80".
class BookInStock
	attr_accessor :price
	attr_accessor :isbn
	def initialize(isbn, price)
		raise ArgumentError,
			"Noo" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
