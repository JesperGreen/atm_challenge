require 'account'
require 'date'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @cash = 0
    @name = set_name(attrs[:name])
  end

  def create_account
    @account = Account.new({ owner: self })
  end

  def deposit(amount)
    @account == nil ? missing_account : deposit_funds(amount)
  end

  def get_cash_from_atm(args = {})
    @account == nil ? missing_account : withdraw_funds(args)
  end

############### private methods ###############

private

  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end

  def increase_cash(response)
    @cash += response[:amount]
  end

  def withdraw_funds(args)
    args[:atm] == nil ? missing_atm : atm = args[:atm]
    account = @account
    amount = args[:amount]
    pin = args[:pin]
    response = atm.withdraw(amount, pin, account)
    response[:status] ? increase_cash(response) : response
  end

  def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def missing_name
    raise "A name is required"
  end

  def missing_account
    raise "No account present"
  end

  def missing_atm
    raise "An ATM is required"
  end
end
