def qmark(str)
  # puts str = str.gsub(/[^\ \d\ \?]/, '') #Uncomment this "puts" for a better view
  str = str.gsub(/[^\ \d\ \?]/, '')
  count = 0

  (0..str.length-1).each do |char|
    if str[char].to_i + str[char+1].to_i == 10
      return false
    elsif str[char].to_i + str[char+2].to_i == 10
      return false
    elsif str[char].to_i + str[char+3].to_i == 10
      return false
    elsif str[char].to_i + str[char+4].to_i == 10
      if str[char+1] != '?' && str[char+2] != '?' && str[char+3] != '?'
        return false
      else
        count += 1
      end
    end
  end
  if count > 0
    return true
  else
    false
  end
end

# puts(qmark("9???1???9??1???9")) 
# puts(qmark("5??aaaaaaaaaaaaaaaaaaa?5?5"))
# puts "-" * 10 
# puts(qmark("arrb6???1xxbl4???eee5")) 
# puts(qmark("arrb6???4xxbl5???eee5")) 
# puts "-" * 10
# puts(qmark("arrb6???4x?x??bl6???eee4")) 
# puts(qmark("arrb3???4xxbl5???eee4")) 
# puts "-" * 10
# puts(qmark("arrb1??9xx")) 
# puts(qmark("arr1?b1??9xx"))
# puts "-" * 10
# puts(qmark("arrb3???2xxbl7???eee2")) 
# puts(qmark("aaaaaaarrrrr??????")) 
# puts "-" * 10
# puts(qmark("arrb6???4xxbl4??eee5")) 
# puts(qmark("arrb6???3xxbl5??eee5")) 