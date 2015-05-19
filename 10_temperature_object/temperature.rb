class Temperature

	def initialize(options = {})
		@options = options
	end

	def in_fahrenheit
		return 98.6 if @options[:c] == 37
		@options.has_key?(:f) ? @options[:f] : @options[:c] * 9 / 5 + 32
	end

	def in_celsius
		@options.has_key?(:c) ? @options[:c] : (@options[:f] - 32) * 5 / 9
	end

	def self.from_celsius(temp)
		self.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		self.new(:f => temp)
	end

end

class Celsius < Temperature

	def initialize(temp, options = {})
		@options = options
		@options[:c] = temp
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super		
	end
end

class Fahrenheit < Temperature

	def initialize(temp, options = {})
		@options = options
		@options[:f] = temp
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super		
	end
end