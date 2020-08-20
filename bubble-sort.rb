require 'pry'

def bubble_sort(array)
  array.map do
    array.each_with_index do |item, index|
      if index == array.size - 1 then
        break
      end
      if item > array[index+1] then
        array[index] = array[index+1]
        array[index+1] = item
        binding.pry
      end
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])