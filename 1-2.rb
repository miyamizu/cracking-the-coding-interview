# 問題の意味が良くわからなかったので、String#reverseを実装してみた

# 全然Rubyっぽくない
# 配列とか数値がきたときに対応できてない

def string_reverse(str)
  begin
    array = []
    chars = str.chars
    (1..str.length).each do
      array << chars.pop
    end
    p array.join('')
  rescue => error
    puts 'nilはだめだよー'
  end
end

string_reverse('aaa')
