def bubble_sort(arr)
  arr.each_with_index do |_, i|
    arr.each_with_index do |_, j|
      next if j >= arr.length - 1 - i

      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

def bubble_sort_by(arr = [])
  arr.each_with_index do |_, i|
    arr.each_with_index do |_, j|
      next if j >= arr.length - 1 - i

      arr[j], arr[j + 1] = arr[j + 1], arr[j] if yield(arr[j], arr[j + 1]) >= 1
    end
  end
  arr
end

arr_bubble_sort = [4, 3, 78, 2, 0, 2]
arr_bubble_sort_by = %w[hi hello hey]

bubble_sort(arr_bubble_sort)
puts "bubble_sort output: #{arr_bubble_sort}"

bubble_sort_by(arr_bubble_sort_by) do |first, second|
  first.length - second.length
end

puts "bubble_sort_by output: #{arr_bubble_sort_by}"
