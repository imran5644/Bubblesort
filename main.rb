# frozen_string_literal: true

def bubble_sort(arr)
  j = 0
  while j < arr.length
    i = 0
    while i < arr.length - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
      i += 1
    end
    j += 1
  end
  p arr
end

bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  j = 0
  while j < arr.length
    i = 0
    while i < arr.length - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
      i += 1
    end
    j += 1
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
