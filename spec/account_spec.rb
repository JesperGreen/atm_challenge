require './lib/account.rb'

describe Account do

  it 'is expected to have a 4 digit number on initialize' do
    pin_length = Math.log10(subject.pin_code).to_i + 1
    expect(pin_length).to eq 4
  end

  it 'is expeted to have a balance of 0 on initialize' do
    expect(subject.balance).to eq 0
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'deactivates account using Instance method' do
    subject.deactivate
    expect(subject.account_status).to eq :deactivated
  end
end
