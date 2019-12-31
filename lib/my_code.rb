def map(source_array)
  arr = []
  i=0 
  while i<source_array.length do
    arr << yield(source_array[i])
    i+= 1 
  end
  arr
end



def reduce(source_array, starting_point = nil)
  if starting_point
    i=0 
  else 
    starting_point = source_array[0]
    i=1 
  end
  
  while i<source_array.length do
    starting_point = yield(starting_point, source_array[i])
    i+= 1
  end
  starting_point
end
