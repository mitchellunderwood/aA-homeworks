fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  con = true
  while con
    con = false
    array.each_index do |i1|
      array.each_index do |i2|
        next if i2 = array.length - 1
        if array[i2].length > array[i1].length
          array[i1],array[i2] = array[i2],array[i1]
          con = true
        end
      end
    end
  end
  array.last
end

def dominant_octopus(array)
  return array if array.length <= 1
  mid = array.length/2
  left = dominant_octopus(array.take(mid))
  right = dominant_octopus(array.drop(mid))
  merge(left,right)
end

def merge(left,right)
  ans = []
  until left.empty? || right.empty?
    if left.first.length >= right.first.length
      ans << left.shift
    else
      ans << right.shift
    end
  end
  ans + left + right
end




def clever_octopus(array)
  i = 0
  longest_word = array[0]
  while i < array.length
    longest_word = array[i]  if array[i].length > longest_word.length
    i += 1
  end
  longest_word
end

p sluggish_octopus(fish_array)
p dominant_octopus(fish_array).first
p clever_octopus(fish_array)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(str,array)
  idx = nil
  array.each_index do |i|
    idx = i if array[i] == str
  end
  idx

end


p slow_dance("right-down", tiles_array)

tiles_array_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def constance_dance(str, hash)
  hash[str]
end

p constance_dance("right-down", tiles_array_hash)
