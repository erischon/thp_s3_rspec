def add(a, b)
  return a + b
end

def subtract (a, b)
  return a - b
end

def sum(arr)
  return arr.empty? ? 0 : arr.reduce(:+)
end

def multiply(a, b)
  return a * b
end

def power(a, b)
  return a ** b 
end

def factorial(num)
  return num == 0 ? 1 : (1..num).reduce(:*)
end
