class Dictionary

	def initialize
		@entries = {}
	end

	def entries
		@entries
		
	end

	

	def add(options)
		options.is_a?(Hash) ? options.each { |key,value| @entries[key] = value } : @entries[options] = nil
		
	end

	def keywords
		@entries.keys.sort
	end

	def find(entry)
		words = @entries.keys.select {|x| x.include?(entry) }
		hash = words.any? ? words.map {|x| {x => @entries[x]}} : {}
		hash = hash.reduce Hash.new, :merge

		
	end
	
	def include?(key)
	  @entries.has_key?(key) 
	end

	def printable
	  printed = ""
	  @entries.keys.sort.each do |word|
      	printed << "[#{word}] \"#{@entries[word]}\"\n"
  	  end
      printed.chomp
    

	end

	
end