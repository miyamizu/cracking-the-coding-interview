# Ruby便利なメソッド多すぎる
# ASCII前提なので全角スペースは考慮しない
# stripの対象かどうかは「ASCIIでの文字コード(10進数)が32または9以上13以下」
# 全角スペースを取り除くgemもある！！
# https://github.com/sanfrecce-osaka/hurricane_trimar/blob/master/lib/hurricane_trimar.rb

def rename_half_width_space(str)
  p str.strip.gsub(' ', '%20')
end

rename_half_width_space('Mr John Smith')
