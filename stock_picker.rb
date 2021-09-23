def stock_picker(prices)
  result = []
  result.push(prices.find_index(prices.max))
  result.push(prices.find_index(prices.min))
  prices.each_with_index do |price, index|
    if index+1 < prices.length && price < prices[index+1]
      result[0] = index if price < prices[result[0]] && index <= result[1]
      result[1] = index+1 if prices[index+1] > prices[result[1]]
      puts result.to_s
    end
  end
end
stock_picker([1,3,6,9,15,8,6,10])
