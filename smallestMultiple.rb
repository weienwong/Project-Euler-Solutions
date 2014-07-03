require 'prime'

def primesUpTo endNum
  primes = []

  (2..endNum).each do |p|
    if Prime.prime? p
      primes << p
    end
  end
  primes
end

def compositesUpTo endNum
  composites = []

  (2..endNum).each do |c|
    if !Prime.prime? c
      composites << c
    end
  end
  composites
end

def storePrimes primeArray
 
  factorToCount = {}
  
  primeArray.each do |p|
    factorToCount[p] = 1
  end

  factorToCount
end

def maxFactors composites, factorCount

  updatedFactorCount = factorCount

  composites.each do |comp|
    factors = Prime.prime_division comp
    
    factors.each do |factorCount|
      if updatedFactorCount[factorCount[0]] < factorCount[1]
        updatedFactorCount[factorCount[0]] = factorCount[1]
      end
    end
  end

  updatedFactorCount

end

def multiplyFactors primeToCount

  multiples = []

  primeToCount.each do |multiple|
    multiples << (multiple[0] ** multiple[1])
  end
  
  multiples.inject do |product,m|
    product * m
  end

end

def smallestMultiple lastNum=20

  allFactors = (1.. lastNum).to_a
  dividedFactors = []
  currentFactors = []
  
  dividedFactors = allFactors
  
  puts "The last number is #{lastNum}"

  (2..lastNum).each do |n|
    allFactors.each do |f|
      if f % n == 0
        puts n
      end
    end
  end
  
  dividedFactors

end
