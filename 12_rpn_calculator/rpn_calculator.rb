class RPNCalculator

	def initialize
		@numbers = []
	end

	def numbers
		@numbers = numbers
	end

	def push(num)
		@numbers << num

	end

	def failure
		raise "calculator is empty"
	end

	def plus
		
		@numbers.length > 1 ? @numbers << @numbers.pop(2).reduce(:+) : self.failure
		# add_value = @numbers[-2..-1].reduce(:+)		

	end

	def minus
		@numbers.length > 1 ? @numbers << @numbers.pop(2).reduce(:-) : self.failure
	end

	def divide

		@numbers.length > 1 ? @numbers << @numbers.pop(2).map {|x| x.to_f}.reduce(:/) : self.failure
		
	end

	def times
		
		
		@numbers.length > 1 ? @numbers << @numbers.pop(2).map {|x| x.to_f}.reduce(:*) : self.failure
		# << @numbers.map {|x| x.to_f}.pop(2).reduce(:*)
	end

	def value
		@numbers.last
	end

	def tokens(string)
	  @tokens = string.split(" ").map do |x|
	      if x == "+"
	        x = x.to_sym
	      elsif x == "-"
	        x = x.to_sym
	      elsif x == "/"
	        x = x.to_sym
	      elsif x == "*"
	        x = x.to_sym
	      else
	        x = x.to_i
	      end
	  end
	  @tokens
      
	end

	def evaluate(string)
		@numbers = self.tokens(string).select {|x| x.is_a?(Integer)}
		syms = self.tokens(string).select {|x| !x.is_a?(Integer)}
		syms.each do |x|
		  if x == :+
	        self.plus
	      elsif x == :-
	        self.minus
	      elsif x == :/
	        self.divide
	      else 
	        self.times
	      end

		end
		@numbers.last
	end

	



end