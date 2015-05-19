class Fixnum

  def in_words
    numbers = self.to_s.split("").map {|x| x.to_i}

    if self == 0
      return "zero"
    end

    answer = ""
    illions = ["", "thousand ", "million ", "billion ", "trillion "]
    i = 0
    while numbers.length != 0
      result = self.wordify(numbers.pop(3))
      if result != ""
        answer.prepend(result + " " + illions[i])
      end
      i += 1
    end
    answer.strip


  end

  def wordify(three_array)
      hundreds = ""
      tens = ""
      lowest = ""

      lowest_words = [nil, "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
      teens_words = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
      tens_words = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

      if three_array == [] || three_array == [0,0,0]
        return ""
      elsif three_array.length == 1
        lowest = lowest_words[three_array[-1]]
      elsif three_array.length >= 2 && three_array[-2] == 1
        tens = teens_words[three_array[-1]]
      elsif three_array.length >= 2
        tens = tens_words[three_array[-2]]
        lowest = lowest_words[three_array[-1]]
      end
      if three_array.length == 3 && three_array[-3] != 0
        hundreds = "#{lowest_words[three_array[-3]]} hundred"
      end


      "#{hundreds} #{tens} #{lowest}".strip
    end


end
