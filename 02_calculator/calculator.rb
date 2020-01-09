# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |item|
    sum += item
  end
  sum
end

def multiply(*nums)
  product = 1
  nums.each do |num|
    product *= num
  end
  product
end

def power(num1, num2)
  num1**num2
end

def factorial(n)
  total = 0
  total += if n > 0
             n * factorial(n - 1)
           else
             1
           end
  total
end
