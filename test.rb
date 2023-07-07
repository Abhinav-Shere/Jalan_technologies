require 'byebug'
def arrange_arr(arr)
  return arr if arr.length <= 1
  sorted_arr = arr.sort

  arranged_arr = []
  first_index = 0
  last_index = sorted_arr.length - 1

  while first_index < last_index
    arranged_arr << sorted_arr[first_index]
    arranged_arr << sorted_arr[last_index]
    first_index += 1
    last_index -= 1
  end

  arranged_arr << sorted_arr[first_index] if first_index == last_index

  arranged_arr
end

input_arr =  [2, 1, 5, 3, 11, 7]
arranged_arr = arrange_arr(input_arr)
puts arranged_arr.join(', ')



# -------------------------------------------------------------------------------------------------------------
# Time and Space complexity :-
# In summary, the time complexity of the program is O(n log n), and the space complexity is O(n).
# -------------------------------------------------------------------------------------------------------------
# Possible Test Cases

# Empty array:
# arrange_array([])
# Expected output: []

# Array with a single element:
# arrange_array([5])
# Expected output: [5]

# Array with two elements:
# arrange_array([10, 5])
# Expected output: [5, 10]

# Array with odd number of elements:
# arrange_array([7, 2, 10, 5, 8])
# Expected output: [2, 10, 5, 8, 7]

# Array with even number of elements:
# arrange_array([7, 2, 10, 5, 8, 1])
# Expected output: [1, 10, 2, 8, 5, 7]

# Array with duplicate elements:
# arrange_array([7, 2, 10, 5, 8, 2, 1, 10])
# Expected output: [1, 10, 2, 8, 2, 7, 5, 10]

# Array with negative numbers:
# arrange_array([-7, 2, -10, 5, 8, -1])
# Expected output: [-10, 8, -7, 5, -1, 2]

# Array with already sorted elements:
# arrange_array([1, 2, 3, 4, 5, 6])
# Expected output: [1, 6, 2, 5, 3, 4]

# Array with large numbers:
# arrange_array([1000, 500, 10000, 200, 100, 3000])
# Expected output: [100, 10000, 200, 3000, 500, 1000]

# Array with strings:
# arrange_array(['apple', 'banana', 'cherry', 'date'])
# Expected output: ['apple', 'date', 'banana', 'cherry']
# -------------------------------------------------------------------------------------------------------------