output_length = 1000
file = 'text.txt'
#Parse file and store words in dict
dict = {}
word_list = []
File.open(file, 'r') do |f1|  
  while line = f1.gets  
    words = line.split
    (words).each do |i|
      word_list.push(i)
    end
  end  
end

(0...word_list.length).each do |i|
  if !dict.has_key?(word_list[i])      #if the word is not in the dict
    val = []
    val.push(word_list[i+1])
    dict[word_list[i]] = val
  else
    val = dict[word_list[i]]
    val.push(word_list[i+1])
    dict[word_list[i]] = val
  end  
end
dict[word_list[-1]] = ["the"]

start_word = word_list[rand(0..word_list.length-1)]
print start_word.capitalize
next_word = dict[start_word][rand(0...dict[start_word].length)]

(0..output_length).each do |x|
  print " " + next_word
  next_word = dict[next_word][rand(0...dict[next_word].length)]
end
puts "."
