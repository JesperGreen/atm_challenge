require 'account'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @cash = 0
    set_name(attrs[:name])
  end

  def create_account
    @account = Account.new({ owner: self })
  end


  def deposit(amount)
    @account == nil ?  missing_account : @account.balance += amount
  end
############### private methods ###############

private

  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end

  def missing_name
    raise "A name is required"
  end

  def missing_account
    raise "No account present"
  end
end
