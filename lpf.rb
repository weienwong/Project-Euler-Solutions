require 'prime'

def largestPrimeFactor n
  ((Prime.prime_division n).inject {|total, i| total + i}).max  
end
