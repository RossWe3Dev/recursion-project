def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left_half = merge_sort(arr[0...mid])
  right_half = merge_sort(arr[mid..-1])

  merge(left_half, right_half)
end

def merge(left, right)
  sorted = []
  while left.any? && right.any?
    sorted << (left[0] <= right[0] ? left.shift : right.shift)
  end

  sorted += left
  sorted += right

  sorted
end

arr_ex1 = [3, 2, 1, 13, 8, 5, 0, 1]
arr_ex2 = [105, 79, 100, 110]
p merge_sort(arr_ex1)
p merge_sort(arr_ex2)
