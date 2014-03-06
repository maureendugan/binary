def binary(number)

  results = [0]

  for i in 1..number do
    k = results.length
    if results.all? {|num| num == 1}
      new_results = [1]
      for j in 1..k do
          new_results[j] = 0
      end
      results = new_results
    elsif results[k-1] == 0
      results[k-1] = 1
    else 
      while k > 1 do
        if results[k-1] == 0
          results[k-1] = 1
          for m in k..results.length-1 do
            results[m] = 0
          end
          k = 0
        else
          k -= 1
        end
      end
    end
  end
  return results.join('').to_i
end

def to_decimal(binary_string)
  result = 0

  until binary_string.to_i == binary(result) do
    result += 1
  end
  return result
end
