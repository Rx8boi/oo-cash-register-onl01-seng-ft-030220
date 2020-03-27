require 'pry'
class CashRegister
  
  
  
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      count = 0
      while count < quantity
        @items << item
        count += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @take_off = (price * discount)/100
      @total -= @take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
end