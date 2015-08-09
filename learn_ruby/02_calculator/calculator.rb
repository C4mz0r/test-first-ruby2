def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(values)
	total = 0
	values.each { |i| total+=i }
	total
end

def multiply(a,b)
	a*b
end

def power(a,b)
	a**b
end

def factorial(a)
	total = 1;
	for i in 1..a
		total *= i;
	end
	total
end
