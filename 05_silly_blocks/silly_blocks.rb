def reverser
	yield.split.map {|i| i.reverse}.join(" ")
end

def adder(num=1, &block)
  block.call + num
end

def repeater(num=3, &block)
	num.times {block.call}
end
