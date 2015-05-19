require "time"

def measure(num=1, &block)

	if num == 1 
	  start = Time.now.to_i
	  block.call
	  return Time.now.to_i - start
	else 
	  start = Time.now.to_i
	  num.times {block.call}
	  return (Time.now.to_i - start) / num.to_f
	end
end