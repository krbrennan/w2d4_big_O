def first_anagram?(string1, string2)
  permutations(string1).include?(string2)
end

def permutations(string)
  return [string] if string.length == 1

  total_permutations = []

  i = 0
  while i < string.length
    permutations = permutations(string[0...i] + string[i+1..-1])
    permutations.each { |perm| total_permutations << string[i] + perm }
    i += 1
  end

  total_permutations
end


#TIME_COMPLEXITY = n!
#space_complexity = n

def second_anagram?(string1, string2)
  return false if string2.length < string1.length
  string1.chars.each do |letter|
    string2.each_char.with_index do |letter2, idx|
      if letter == letter2
        string2[idx] = ""
      end
    end
  end
  string2.empty? ? true : false
end


#TIME_COMPLEXITY = O(n^2)
#space_complexity = 1



def third_anagram?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

#TIME_COMPLEXITY = O(n log n)
#space_complexity = 1




def fourth_anagram?(string1, string2)
  str1_hash = Hash.new(0)
  str2_hash = Hash.new(0)

  string1.chars.each do |char|
    str1_hash[char] += 1
  end
  string2.chars.each do |char|
    str2_hash[char] += 1
  end
  p str1_hash
  p str2_hash
  str1_hash == str2_hash
end


#TIME_COMPLEXITY = n^2
#space_complexity = 1
