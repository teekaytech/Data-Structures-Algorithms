def combination(arr)
  comb = []
  if arr.length === 1
    comb << arr
    return comb
  else
    p 'step'
    arr 
    combination(arr[1, arr.length])
  end

end


p combination([1,2,3])