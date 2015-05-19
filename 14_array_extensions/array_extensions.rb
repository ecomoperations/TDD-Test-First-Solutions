class Array  
	

	def sum
		self.empty? ? 0 : self.reduce(:+)
	end

	def square
		self.empty? ? [] : self.map {|x| x*x}
	end
	def square!
		self.empty? ? [] : self.map! {|x| x*x}
	end
end