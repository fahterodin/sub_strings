
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def combine(array)
  (1..array.length).map {|i| array.each_cons(i).map(&:join)}.flatten
end

def substrings(string, array)
  result = Hash.new(0)

  str_split = string.downcase.split(" ")
  for i in 0..str_split.length - 1
    str_array = str_split[i]
    str_combination = combine(str_array.chars)
    for i in 0..str_combination.length
      array.each do |word|
        if word == str_combination[i]
          result[word] += 1
        end
      end
    end
  end
  puts result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
