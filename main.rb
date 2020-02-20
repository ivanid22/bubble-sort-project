
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

def bubble_sort_by(array_to_sort = [])

  return false if !array_to_sort 

  for i in (0...array_to_sort.length)
    swapped = false
    for j in (0...array_to_sort.length-i-1)
      if yield(array_to_sort[j], array_to_sort[j+1]) == 1
        array_to_sort[j], array_to_sort[j+1] =  array_to_sort[j+1], array_to_sort[j]
        swapped = true
      end
    end
    break if !swapped
  end

  return array_to_sort
end

arr_bubble_sort = [4,3,78,2,0,2];
arr_bubble_sort_by = [4,3,78,2,0,2];

bubble_sort(arr_bubble_sort)
puts "bubble_sort output: #{arr_bubble_sort}"

bubble_sort_by(arr_bubble_sort_by) do |left, right|
  return_value = 0
  if left < right
    return_value = -1
  else left > right 
    return_value = 1
  end
  return_value
end

puts "bubble_sort_by output: #{arr_bubble_sort_by}"