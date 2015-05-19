class Book

	def initialize
		@title = title
	end


	def title=(the_title)
		downcase_words = ["and", "in", "the", "of", "in", "an", "a"]
		@title = the_title.capitalize.split(" ").map {|i| downcase_words.include?(i) ? i : i.capitalize}.join(" ")
	end

	def title
		@title
	end





end
