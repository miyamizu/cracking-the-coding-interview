s1 = 'waterbottle'
s2 = 'erbottlewat'

# s1 = waterbottle
# x = wat （w→a→tと順番に回転させるところ）
# y = erbottle
# s2 = y + x = erbottlewat

def isRotation(s1, s2)
  len = s1.length;

  if len == s2.length && len > 0
    s1s1 = s1 + s1
    # s2はs1s1の部分文字列になっている
    return isSubstring(s1s1, s2)
  end
  return false
end

def isSubstring(s1s1, s2)
  s1s1.include? s2
end

p isRotation(s1, s2)
