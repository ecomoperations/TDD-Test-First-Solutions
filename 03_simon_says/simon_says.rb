def echo(greeting)
	"#{greeting}"
end

def shout(greeting)
	greeting.upcase
end

def repeat(*args)
	args.length > 1 ? args[1].times.collect {args[0]}.join(' ') : (args.first + " " + args.first)
end

def start_of_word(string, num)
	
	string[0..(num-1)]
end

def first_word(string)
	string.split.first
end

def titleize(string)
	
	string.split.map {|i| i.capitalize}.join(" ")
end