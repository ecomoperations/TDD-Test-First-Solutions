class Timer

	def initialize
		@timer = timer
		@seconds = 0
	end 


	def timer
		@timer
	end

	def seconds=(num_secs)
		@seconds = num_secs
	end

	def seconds
		@seconds		
	end

	def time_string
		#seconds
		seconds = @seconds % 60
		seconds < 10 ? seconds = "0#{seconds}" : "#{seconds}" 

		#hours
		@seconds > 3600 ? hours = @seconds / 3600 : hours = 0
		hours < 10 ? hours = "0#{hours}" : "#{hours}"

		#minutes
		@seconds > 60 ? minutes = @seconds / 60 : minutes = 0
		minutes = minutes % 60  if minutes.to_i > 59
		minutes < 10 ? minutes = "0#{minutes}" : "#{minutes}"		
		
		return "#{hours}:#{minutes}:#{seconds}"
	end

end
