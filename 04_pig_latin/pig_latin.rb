def translate(string)
	answer = ""
	string.split.each do |i|
		if ("aeiou").include?(i[0])
			answer += i[0..i.length] + "ay " 
		elsif !("aeiou").include?(i[0]) && !("aeiou").include?(i[1]) && !("aeiou").include?(i[2]) || (i[0..2] == "squ")
			answer += i[3..i.length] + i[0] + i[1] + i[2] + "ay "
		elsif !("aeiou").include?(i[0]) && !("aeiou").include?(i[1]) || (i[0..1] == "qu")
			answer += i[2..i.length] + i[0] + i[1] + "ay "
		else
			answer += i[1..i.length] + i[0] + "ay "
		end
	end
	return answer.chop

end