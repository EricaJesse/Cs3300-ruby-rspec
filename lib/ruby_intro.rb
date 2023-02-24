# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |x| sum += x }
  return sum
end

def max_2_sum arr

  if arr.empty?
    return 0

  elsif arr.length == 1
    return arr[0]

  else
    # Sort the array in descending order and sum the first two elements
    sortedArr = arr.sort.reverse
    return sortedArr[0] + sortedArr[1]

  end

end

def sum_to_n? arr, n

  hash = {}

  #iterates through the array and for each element

  arr.each do |current|

  #checks if the difference between n and the current element is already in the hash
  
    #if returns true because the two elements sum to n
    if hash[n - current]
      return true 
    end 

    #if not, it adds the current element to the hash
    hash[current] = true

  end

  #If no two elements sum to n, it returns false

  return false

end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s

  #make all letters one case, to ensure that both cases are accounted for

  s = s.downcase

  #using a regular expression, check if the incoming letter is a consonant
  #parses through the alphabet leaving out the vowels

  if s.match(/^[b-d, f-h, j-n, p-t, v-z]/i)
    return true

  else
    return false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

  def constructor
    ISBN
    price
  end

  def initialize
    raise ArgumentError, "ISBN cannot be empty" if ISBN.empty? 
    raise ArgumentError, "Price must be greater than zero" if price <= 0 
    @price = price
    @ISBN = ISBN

    def price_as_string
      sprintf("$%.2f", @price)
    end

end
