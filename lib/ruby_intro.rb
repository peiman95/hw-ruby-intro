# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).map.any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "" || s.delete('01') != ''
    return false
  end
  return s.to_i % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn  
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn=isbn
  end
  
  def price=(price)
    @price=price
  end
  
  def price_as_string
    str = "$%.2f" % [@price]
    return str
  end
  
end
