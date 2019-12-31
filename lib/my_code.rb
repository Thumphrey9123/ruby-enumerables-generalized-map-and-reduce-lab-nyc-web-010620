def map(source_array)
  arr = []
  i=0 
  while i<source_array.length do
    arr << yield(source_array[i])
    i+= 1 
  end
  arr
end



def reduce(source_array, starting_point = 0)
  i=0 
  while i<source_array.length do
    yield(source_array[i])
    i+= 1
  end
  starting_point
end




def reduce_to_total(source_array, starting_point = 0)
  i=0 
  while i<source_array.length do
    starting_point+= source_array[i]
    i+= 1
  end
  starting_point
end

def reduce_to_all_true(source_array)
  i=0 
  while i<source_array.length do
    if source_array[i] == false
      return false
    end
    i+= 1 
  end
  true
end

def reduce_to_any_true(source_array)
  i=0 
  while i<source_array.length do
    if source_array[i] == true
      return true
    end
    i+= 1 
  end
  false
end