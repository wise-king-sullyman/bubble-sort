def bubble_sort(array)
  new_array = []

  until array.size == 1 do
    swapped = false #set flag to see if array is already sorted
    array.map.with_index do |item, index|
      next if index+1 == array.size #proceed to next loop on last item
      
      next_item = array.at(index+1) 
      if item > next_item then
        array[index] = next_item
        array[index+1] = item
        swapped = true
      end
    end

    if swapped == false then #exit loop if remaining array is sorted
      break
    end

    new_array.unshift(array.pop)

  end
  p array + new_array
end

bubble_sort([4,3,78,2,0,2])