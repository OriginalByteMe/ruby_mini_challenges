def bubble_sort(num_array)
  for i in (0...num_array.length - 1) do
    for j in (0...num_array.length - 1 - i) do
      if num_array[j] > num_array[j+1] 
        num_array[j], num_array[j + 1] = num_array[j + 1], num_array[j]
      end
    end
  end

  print(num_array)
end

bubble_sort([4,3,78,2,0,2])