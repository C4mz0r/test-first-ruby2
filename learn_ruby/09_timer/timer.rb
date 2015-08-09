class Timer

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def seconds=(sec)
	 	@seconds = sec				
	end

	def time_string	
		return "00:00:0#{@seconds}" if (seconds < 10)
		
		remaining_seconds = @seconds
		hrs = remaining_seconds / 3600
		hrs = "0#{hrs}" if hrs < 12
		remaining_seconds %= 3600
		mins = remaining_seconds / 60
		mins = "0#{mins}" if mins < 10
		remaining_seconds %= 60
		remaining_seconds = "0#{remaining_seconds}" if remaining_seconds < 10
		return "#{hrs}:#{mins}:#{remaining_seconds}"
	end
end
