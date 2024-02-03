def binary_search(array, item)
    low = 0
    high = array.size - 1

  until high < low
    mid = (low + high) / 2
    target = array[mid]

    if target > item 
      high = mid - 1
    elsif target < item 
      low = mid + 1
    else
      return mid
    end
  end

  nil
end

sorted = [1, 7, 4, 23, 8, 9, 3, 5, 67, 6345, 324].sort
list = [1, 3, 5, 7, 9]
p sorted
p list
p binary_search(sorted, 67)
p binary_search(list, -1)
