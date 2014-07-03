def getMultiplesOf n, upTo
  (1..upTo).each do |num|
    return num * n if num < upTo
  end
end
