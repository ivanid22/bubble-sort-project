
def bubble_sort(array_to_sort = [])
  
  return false if !array_to_sort 

  for i in (0...array_to_sort.length)
    swapped = false
    for j in (0...array_to_sort.length-i-1)
      if array_to_sort[j] > array_to_sort[j+1]
        array_to_sort[j], array_to_sort[j+1] =  array_to_sort[j+1], array_to_sort[j]
        swapped = true
      end
    end
    break if !swapped
  end

  return array_to_sort
end

puts bubble_sort()