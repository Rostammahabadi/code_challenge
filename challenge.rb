require 'pry'
def find_matching_pair(payload, target)
  result_hash = {}
  payload.each do |integer|
    subtraction = target - integer
    if result_hash[subtraction]
      return [integer, subtraction]
    end
    result_hash[integer] = subtraction
  end
  return []
end

payload = [1,2,3,10,12, 14]
target = 22
p find_matching_pair(payload, target)
