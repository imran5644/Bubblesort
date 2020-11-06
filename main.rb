def bubblesort(arr)
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

bubblesort([4, 3, 78, 2, 0, 2])