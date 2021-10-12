def bubble_sort(list)
  swapped = true
  while(swapped) do
    swapped = false
    list.each_with_index do |element, index|
      if list[index+1] && element > list[index+1]
        list[index] = list[index+1]
        list[index+1] = element
        swapped = true
      end
    end
  end
  p list
end