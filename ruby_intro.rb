# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	arr_sum = 0
	
	if  arr.length > 0 then
		arr.each do |x|
			arr_sum += x
		end
	end
	
	return  arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
	if arr.length == 0 then
		return 0
	elsif arr.length == 1 then
		return arr[0]
	end

	arr = arr.sort
	
	return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	return true if s == "0"
	
	/^[10]*00$/.match(s) != nil	
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError,
			"Arugment Error" if isbn.empty? or price <= 0

		@isbn = isbn
		@price = price
	end
	
	def price_as_string
		sprintf("$%2.2f", @price)
	end
	
end
