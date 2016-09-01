# ATM Challenge

First challenge in the CraftAcademy Bootcamp, writing a simple logic for an ATM using ruby

### Instructions

Test

```
this will be formatted as

> jesper.get_cash_from_atm(amount: 50, pin: 9233, account: jesper.account, atm: atm)
    => {:status=>false, :message=>"wrong pin", :date=>#<Date: 2016-08-15 ((2457616j,0s,0n),+0s,2299161j)>, :account_status=>:active}
> jesper.get_cash_from_atm(amount: 50, pin: 1988, account: jesper.account, atm: atm)
=> {:status=>false, :message=>"wrong pin", :date=>#<Date: 2016-08-15 ((2457616j,0s,0n),+0s,2299161j)>, :account_status=>:active}
irb(main):032:0> jesper.account.pin_code
=> 4487
irb(main):033:0> jesper.get_cash_from_atm(amount: 50, pin: 4487, account: jesper.account, atm: atm)

```
