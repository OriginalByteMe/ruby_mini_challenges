def stock_picker(stock_prices)
  buy = 0
  sell = 0
  profit = 0 # Profit = sell - buy
  best_pair = [0,0]
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices[buy_day,stock_prices.length].each_with_index do |sell_price, sell_day|
      if sell_price - buy_price > profit
        profit = sell_price - buy_price
        best_pair = [buy_day, sell_day + buy_day]
      end
    end
  end

  print(best_pair)
end


stock_picker([17,3,6,9,15,8,6,1,10])