class Account
  attr_accessor :pin_code, :balance, :account_status

  def initialize
    @pin_code = generate_pin
    @balance = 0
    @account_status = :active
  end

  def deactivate
    @account_status = :deactivated
  end

 ############### private methods ###############
  private

  def generate_pin
    rand(1000..9999)
  end
end
