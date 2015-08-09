def echo(input)
	input
end

def shout(input)
	input.upcase
end


def repeat(input, times=2)
	((input + ' ') * times).chop
end

def start_of_word(input, chars)
	input[0..chars-1]
end

def first_word(input)
	input.split[0]
end

def titleize(input)
	words = input.split
	words[0].capitalize! # always capitalize the first one
	for i in 1..(words.length-1) do	
		words[i].capitalize! unless ['a', 'the', 'or', 'and', 'of', 'over'].include? words[i] # don't capitalize small ones; probably could put some additional ones in this list too...
	end
	words.join(' ')
end
