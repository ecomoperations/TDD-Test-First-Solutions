class XmlDocument

	def initialize(boolean = nil)
		@boolean = boolean
		@count = 3		
	end

	def hello(*args)
		name_info = ""
		if block_given? && @boolean == true
			return self.indents("hello", yield )
		elsif block_given?
			return "<hello>#{yield}</hello>"
		elsif args.any? 
			name_info = args[0].keys.first 
		else
			return "<hello/>"
		end
		"<hello #{name_info.to_s}='#{args[0][name_info]}'/>"
	end

	def indents(*args)		 
		@count -= 1
		space = "  " * @count
		"#{space}" + "<#{args[0]}>\n" + args[1] + "#{space}" + "</#{args[0]}>\n"		
	end

	def send(tag_name)
		"<#{tag_name}/>"
	end

	def goodbye
		if block_given? && @boolean == true
			return self.indents("goodbye", yield )
		elsif block_given?
			return "<goodbye>#{yield}</goodbye>"
		else
			return "<goodbye/>"
		end
	end

	def come_back
		if block_given? && @boolean == true
			return self.indents("come_back", yield )
		elsif block_given?
			return "<come_back>#{yield}</come_back>"
		else
			return "<come_back/>"
		end
	end

	def ok_fine(fine_info)
		ok_info = fine_info.keys.first
		with_boolean = "  " * @count + "<ok_fine #{ok_info.to_s}='#{fine_info[ok_info]}'/>\n"
		without_boolean = "<ok_fine #{ok_info.to_s}='#{fine_info[ok_info]}'/>"
		@boolean == true ? with_boolean : without_boolean
	end

	

end