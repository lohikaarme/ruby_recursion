# frozen_string_literal: true

def merge_sort(arr)
  return arr unless arr.length > 1

  left, right = arr.each_slice((arr.length / 2.0).round).to_a
  left = merge_sort(left)
  right = merge_sort(right)
  sorted = []

  until left.empty? && right.empty?
    if left.empty? || right.empty?
      sorted << left.shift unless left.empty?
      sorted << right.shift unless right.empty?
    elsif left[0] > right[0]
      sorted << right.shift
    else
      sorted << left.shift
    end
  end
  sorted
end

p merge_sort([8, 1, 3, 8, 4, 5, 75])
