# 大文字と小文字の確認
# 空白があってもいいのか確認

def swich_word?(str1, str2)
  str1.reverse == str2
end

p swich_word?('god', 'dog')
