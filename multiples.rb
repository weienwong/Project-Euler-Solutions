def getMultiplesOf n, m, upTo
  
  multiplesOfN = (1...upTo).find_all {|i| i % n == 0}
  multiplesOfM = (1...upTo).find_all {|i| i % m == 0}
  
  p multiplesOfN

  p multiplesOfM

  return (multiplesOfN + multiplesOfM).inject {|sum, n| sum + n}
end


