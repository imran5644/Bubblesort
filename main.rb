def bubble_sort(arr)
    j = 0
    while j < arr.length do
        i = 0
        while  i < arr.length do
           if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
           end
           i+=1
        end
        j+=1
    end
    arr
end

bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
    j = 0
    while j < arr.length do
        i = 0
        while  i < arr.length do
            if yield(arr[i], arr[i+ 1]).positive?
            arr[i], arr[i+1] = arr[i+1], arr[i]
           end
           i+=1
        end
        j+=1
    end
    arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
    left.length - right.length
  end