class Array
  def stock_picker
    best_pair = nil
    best_profit = 0
    self.each_index do |buy_date|
      self.each_index do |sell_date|
        next if sell_date < buy_date
        profit = self[sell_date] - self[buy_date]
        if profit > best_profit
          best_pair, best_profit = [buy_date, sell_date], profit
        end
      end
    end
    best_pair
  end
end
