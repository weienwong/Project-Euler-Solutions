# takes in an integer n

def palindromicNum? n
  palString = n.to_s
  if palString == palString.reverse
    true
  else
    false
  end
end

def largestPalindromeProd
  numberArray = ((100..999).to_a).reverse

  catch :doneLoop do
    numberArray.each do |n|
      numberArray.each do |m|
        if palindromicNum? n * m
          puts "#{n} and #{m} create the largest palindrome: #{n * m}"
          throw :doneLoop       
        end
      end
    end
  end

end
