# p 'A'.ord => 65
# p 'a'.ord => 97

# あえて本に載っているようにJavaの解法っぽく&uniqを使わずに書いてみたけど、Rubyの配列はJavaと違って初期化した配列を越えるindexはnilになっちゃうから、ちょっとイケてないかも。とはいえ、最初に256文字以上の文字列は排除しているので、これでもいいかもしれない！！

def isUniqueChars2(str)
  return false if str.length > 256

  char_set = [256]
  str.chars.each do |char|
    return false if char_set[char.ord]

    char_set[char.ord] = true
  end
end

p isUniqueChars2('abcdwehlvs')
