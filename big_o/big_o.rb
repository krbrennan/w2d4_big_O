
def my_min(array)
  min_val = false

  array.each_index do |idx1|
    min_val = true
    array.each_index do |idx2|
      next if idx1 == idx2
      if arr[idx2] < arr[idx1]
        min_val = false
      end
    end
    return arr[idx1] if min_val
  end
end
#TIME_COMPLEXITY = O(n^2)
#MEMORY_COMPLEXITY = O(1)

def my_min_2(array)
  min_val = array[0]

  array.each_index do |idx|
    array[idx] < min_val ? min_val = arr[idx] : next
  end
  min_val
end
#TIME_COMPLEXITY = O(n)
#MEMORY_COMPLEXITY = O(1)

def largest_contiguous_subsum(arr)
  all_subsums = []

  arr.each_index do |idx1|
    (idx1..(arr.length - 1)).each do |idx2|
      all_subsums << arr[idx1..idx2]
    end
  end
  all_subsums.map { |subsum| subsum.reduce(&:+) }.max
end
# TIME_COMPLEXITY = O(n^3)
# MEMORY_COMPLEXITY = O(n^3)

def largest_contiguous_subsum2(arr)
  largest = arr[0]
  current = arr[0]

  return arr.max if arr.all?{|ele| ele < 0}

  (1..arr.length - 1).each do |i|
    current = 0 if arr[i] < 0
    current += arr[i]
    largest = current if current > largest
  end
  largest
end
# TIME_COMPLEXITY = O(n)
# MEMORY_COMPLEXITY = O(1)
