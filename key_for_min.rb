# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# hash = {:blake => 500, :ashley => 2, :adam => 1}
require 'pry'
def key_for_min_value(name_hash)
  if name_hash != {}
    valuesArr = []
  #This is going to dump all my numbers into an array that I'll iterate over
    name_hash.each do |name, num|
      valuesArr << num
    end

    potential_num = nil
    min_num = nil
    notThisNumber = []

    valuesArr.each.with_index do |num, index|
      potential_num = num
      binding.pry
      if notThisNumber.include?(potential_num) == false
        binding.pry
        valuesArr.each.with_index do |num, index|
        next_num = index + 1
        binding.pry
         if potential_num > next_num
           notThisNumber << potential_num
         else
           min_num = potential_num
         end
        binding.pry
         #do nothing
       end
        #else, skip this number
      end
      binding.pry
    end

    key_name = ""
      name_hash.each do |name, num|
        if num == min_num
          key_name = name
        end
      end
    binding.pry
  else
    key_name = name_hash
  end
  puts key_name
  binding.pry
  key_name
end
