def sort_array_asc(array)
  array.sort do |a, b|
    a <=> b
  end
end


def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  element1 = array[1]
  element2 = array[2]
  new_array = []
  array.each_with_index do |element, index|
    if index == 1
      new_array << element2
    elsif index == 2
      new_array << element1
    else
      new_array << element
    end
  end
  new_array
end

def reverse_array(array)
  array.reverse

end

def kesha_maker(array)
  new_array = []
  array.each do |word|
    new_array << word[0..1] + "$" + word[3,word.length-1]
  end
  new_array
end

def find_a(array)
  array.select {|string| string[0] == "a"}
end

def sum_array(array)
  array.inject {|sum, number| sum + number}
end

def add_s(array)
  new_array = array.each_with_index.collect do |element, index|
    if index != 1
      element << "s"
    else element
    end
  end
  new_array
end
