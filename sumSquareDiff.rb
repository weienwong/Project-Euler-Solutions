def sumSquareDiff endNum=100

  sumOfSquares = (1..endNum).inject do |sum,num|
    sum + num**2
  end

  sumOfAll = (1..endNum).inject do |sum,num|
    sum + num
  end

  squareOfTheSum = sumOfAll ** 2

  squareOfTheSum - sumOfSquares

end
