class MinorsCustomer

  def initialize
    @price = 0
  end

  def set_alcohol=(price)
    return
  end

  def set_softdrink=(price)
    @price += price
  end

  def set_food=(price)
    @price += price
  end

  def sum_price
    @price
  end
end

class AdultCustomer < MinorsCustomer

  def initialize
    super
    @alcohol_flag = false
  end

  def set_alcohol=(price)
    @price += price
    @alcohol_flag = true
  end

  def set_food=(price)
    if @alcohol_flag == true
      @price += (price - 200)
    else
      @price += price
    end
  end
end

people, orders = gets.split(' ').map(&:to_i)

customers = []

people.times do
  age = gets.chomp.to_i

  if age >= 20
    customers << AdultCustomer.new
  else
    customers << MinorsCustomer.new
  end
end

orders.times do
  num, flag, price = gets.chomp.split(' ')
  customer_class = customers[num.to_i - 1]
  set_price = price.to_i

  if flag == "alcohol"
    customer_class.set_alcohol=(set_price)
  elsif flag == "softdrink"
    customer_class.set_softdrink=(set_price)
  else
    customer_class.set_food=(set_price)
  end
end

customers.each do |val|
  puts val.sum_price
end
