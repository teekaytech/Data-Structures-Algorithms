def transpose(string)
  output = String::new
  s_arr = string.split('')
  while s_arr.length > 0
    if s_arr[0] == 'n'
      output += s_arr[0]
      i = output.length - 2
      while i >= 0
        break if !output[i].eql?('g')
        
        output[i], output[i + 1]  = output[i + 1], output[i]
        i -= 1
      end
      s_arr.delete_at(0)
    else
      output += s_arr[0]
      s_arr.delete_at(0)
    end
  end
  output
end

puts transpose('rignadingdiggn!')
# => ringadingdingg! 

p transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('gngngnnggnngggnnn') #ggn
# => nnnnnnnnngggggggg