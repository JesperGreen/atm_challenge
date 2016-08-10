class Account
  attr_accessor :pin_code, :balance, :account_status

  def initialize(attrs = {})
    @pin_code = generate_pin
    @balance = 0
    @account_status = :active
    set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

 ############### private methods ###############
  private

  def generate_pin
    rand(1000..9999)
  end

  def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
  end

  def missing_owner
    raise "An Account owner is required"
  end
end
