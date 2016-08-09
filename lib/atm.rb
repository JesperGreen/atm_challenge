class Atm
  attr_accessor :balance

  def initialize
    @balance = 1000
  end

  def withdraw(amount, pin_code, account)
    case
    when insufficient_funds_in_account?(amount, account) then
      { status: false, message: 'insufficient funds in account', date: Date.today }
    when insufficient_funds_in_atm?(amount) then
      { status: false, message: 'insufficient funds in ATM', date: Date.today }
    when incorrect_pin?(pin_code, account.pin_code) then
      { status: false, message: 'wrong pin code', date: Date.today }
    else
      perform_transaction(amount, account)
    end
  end

  def perform_transaction(amount, account)
    @balance -= amount
    account.balance -= amount
    { status: true, message: 'success', date: Date.today, amount: amount }
  end

  #private methods

  private

  def insufficient_funds_in_account?(amount, account)
    amount > account.balance
  end


  def insufficient_funds_in_atm?(amount)
    @balance < amount
  end

  def incorrect_pin?(pin_code, actual_pin)
    pin_code != actual_pin
  end
end
