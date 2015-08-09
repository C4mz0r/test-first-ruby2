class Book

	def title=(new_title)
		@title=titleize(new_title)
	end	
	
	def title
		@title
	end


		private

		def titleize(input)
			words = input.split
			words[0].capitalize! # always capitalize the first one
			for i in 1..(words.length-1) do	
				words[i].capitalize! unless ['a', 'the', 'or', 'and', 'of', 'over', 'in', 'an'].include? words[i] # don't capitalize small ones; probably could put some additional ones in this list too...
			end
			words.join(' ')
		end
	

	
end
