# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# hash = {:blake => 500, :ashley => 2, :adam => 1}
require 'pry'
def key_for_min_value(name_hash)
  min_num = 0
  output = name_hash
  
  if name_hash != {}
    valuesArr = []
  #This is going to dump all my numbers into an array that I'll iterate over
    name_hash.each do |name, num|
      valuesArr << num
    end

    min_num = valuesArr.min
    name_hash.each do |name, num|
      if num == min_num
        output = name
      end
    end
  end
  output
end
