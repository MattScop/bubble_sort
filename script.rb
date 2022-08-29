=begin 
1. Create the bubble_sort method which takes an array as a parameter
2. Iterate over the array a number equals to (array.length -1) times. For each
iteration, compare the number and the one next to it. If greater, than swap 
them. Repeat until the array is fully ordered. 
=end

# 1.
def bubble_sort(array)
    # 2.
    (array.length-1).times do
        array.each_with_index do |number, idx|
            case array[idx] <=> array[idx + 1]
            when 1
                array.insert(idx, array.delete_at(idx + 1))
            else
                next
            end
        end
    end
    print array
end

bubble_sort([4,3,78,2,0,2])