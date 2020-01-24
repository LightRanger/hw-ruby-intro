# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+) # Apply + operation to all elements in arr
end

def max_2_sum arr
  if arr.empty? # Return 0 if empty
    0
  else
    arr = arr.sort
    if arr.last < 0 # If arr is in reverse order
      arr = arr.reverse
    end
    
    temp = arr.pop # Grab first maximum
    
    if arr.empty? # Only one value in arr
      temp
    else # Multiple values in arr
      temp += arr.pop # Add next highest value
    end
    
  end
  
end

def sum_to_n? arr, n
  if !arr.empty? && arr.size != 1 # If arr has 2+ elements
    for i in 0..arr.size-1
      for j in 0..arr.size-1 # Loop over all possible combinations
        if i == j
          temp = n - 1 # Assign dummy value if adding the same element
        else
          temp = arr[i] + arr[j] # Calculate sum
        end
        
        if temp == n
          return true # Return true if found
        end
        
      end
      
    end
    
  end
  false # Return false if arr is empty or has only one element
  
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.match?(/\A[^aeiouAEIOU\p{Punct}]\w*/) # Check for vowels/punctuation in the first position
end

def binary_multiple_of_4? s
  if (s.match?(/\A[01]+\Z/)) # Check if s is a valid binary number
    return s.match?(/0\Z/) # If 0 is the end digit, the number is even
  end
  
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if !isbn.empty?
      @isbn = isbn # Non-empty string stored in @isbn
    else    
      raise ArgumentError.new 'ISBN string is empty!' # Raise error if empty
    end
    
    if price.positive?
      @price = price # Positive number stored in @price
    else
      raise ArgumentError.new 'Price is less than or equal to 0!' # Raise error if invalid
    end
    
  end
  
  def isbn # Getter for @isbn
    @isbn
  end
  
  def isbn=(isbnNew) # Setter for @isbn
    @isbn = isbnNew
  end
  
  def price # Getter for @price
    @price
  end
  
  def price=(priceNew) # Setter for @price
    @price = priceNew
  end
  
  def price_as_string # Returns @price as a string
    priceString = String.new("$")
    priceString += @price.round(2).to_s # Store @price rounded to 2 decimals
    
    if priceString.index('.')+2 == priceString.size
      priceString += "0" # Append extra 0s if needed
    end
    
    return priceString
  end
  
end
