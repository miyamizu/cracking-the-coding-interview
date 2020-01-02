# 一応要件は満たせた気がする
# abbbcccでもOK
# aaaaabbbcccはもちろんOK
# aもOK

def compression_word(str)
  count_by_char = 0
  array = []
  str.chars.each_with_index do |char, i|
    count_by_char += 1
    if str.chars[i + 1] == nil
      array << str.chars[i - 1]
      array << count_by_char
      check_array(array, str)
    elsif str.chars[i] != str.chars[i + 1]
      array << str.chars[i - 1] if i > 0
      array << str.chars[i] if i == 0
      array << count_by_char
      count_by_char = 0
    end
  end
end

def check_array(array, str)
  if str.length < array.join('').length
    p str
  else
    p array.join('')
  end
end

compression_word('a')
