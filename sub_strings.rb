dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	sub_string_dict = Hash.new(0)
	string_array = string.split(" ")

	for sub_str in dictionary
		sub_str = sub_str.downcase

		string_array.each do |str|
			if str.downcase.include?(sub_str)
				value = sub_string_dict[sub_str] + 1
				sub_string_dict[sub_str] = value
			end
		end
	end

	return sub_string_dict
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)