
word_dict = {}
word_list = []
File.open('text.txt', 'r') do |f1|  
  while line = f1.gets  
    words = line.split
    (words).each do |i|
      word_list.push(i)
    end
  end  
end

(0...word_list.length).each do |i|
  if !word_dict.has_key?(word_list[i])      #if the word is not in the dict
    val = []
    val.push(word_list[i+1])
    word_dict[word_list[i]] = val
  else
    val = word_dict[word_list[i]]
    val.push(word_list[i+1])
    word_dict[word_list[i]] = val
  end  
end

puts word_dict["the"][rand(0..10)]