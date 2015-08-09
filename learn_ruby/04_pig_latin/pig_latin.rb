def translate(input)
	words = input.split
	for i in 0..words.length-1 do
		words[i] = translate_word( words[i] )
	end
	words.join(' ')
end

private
def is_consonant? (letter)
	return false if ['a', 'e', 'i', 'o', 'u'].include? letter
	return true;
end

# I don't feel like I did a very good job here, it seemed like I was just coding in edge cases one at a time to deal with the failures.
# would like to see this improved.
def translate_word(word)
	if not is_consonant? word[0]  then
		return word + "ay"
	end
	return word[2..word.length-1] + word[0] + word[1] + "ay" if word[0..1] == "qu"
	return word[3..word.length-1] + word[0] + word[1] + word[2] + "ay" if word[1..2] == "qu"

	return word[1..word.length-1] + word[0] + "ay" unless is_consonant? word[1]
	return word[2..word.length-1] + word[0] + word[1] + "ay" unless is_consonant? word[2]
	return word[3..word.length-1] + word[0] + word[1] + word[2] + "ay" unless is_consonant? word[3]
end

