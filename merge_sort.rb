class MergeSort
  def self.sort(array)
    return array if array.length <= 1
    mid = array.length / 2
    left = array[0...mid]
    right = array[mid..-1]
    merge(sort(left), sort(right))
  end

  def self.merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end
end

if __FILE__ == $0
  array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
  p MergeSort.sort(array)
end