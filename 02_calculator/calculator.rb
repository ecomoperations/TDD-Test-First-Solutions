def add(param1, param2)
	param1 + param2
end

def subtract(param1, param2)
	param1 - param2
end

def sum(numbers)
	numbers.any? ? numbers.reduce(:+) : 0
end

def multiply(numbers)
	numbers.reduce(:*)
end

def power(num, power)
	power.times {num*num}
end

def factorial(number)
	number.times {number*(number-1)}
end