def fib n=2
  fib_num = [1,2]

  (2...n).each do |i|
    fib_num << fib_num.at(i - 2) + fib_num.at(i - 1) 
  end

  return fib_num

end

def sumOfEven fib_seq
  evenSeq = fib_seq.select{|num| num.even?}
  sum = evenSeq.inject {|sum, n| sum + n }

  sum
end
