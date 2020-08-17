class Account 
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private 
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end

  public 
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: #{@balance}"
    else 
      pin_error
    end
  end
  def withdraw(pin_number, amount)
    if pin_number == @pin
      if amount <= @balance
        @balance -= amount
        puts "Withdrew #{amount}. New balance: #{@balance}."
      else 
        puts "ERROR! Your withdraw cannot exceed you balance. Current Balance: #{@balance}"
    else
      pin_error
    end 
  end
  def deposit(pin_number, amount)
    if pin_number == @pin
      @balance += amount
      puts "Withdrew #{amount}. New balance: #{@balance}."
  end
  def

end

checking_account = Account.new('wedding', 5_000)