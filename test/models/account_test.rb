require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test 'save new account' do
    account = Account.new owner: users(:one),
                          price: 9.99,
                          name: 'Test Account'
    assert account.save
  end

  test 'should not save account without owner' do
    account = Account.new price: 9.99,
                          name: 'Test Account'
    assert_not account.save, 'Saved account without owner'
  end

  test 'should not save account without price' do
    account = Account.new owner: users(:one),
                          name: 'Test Account'
    assert_not account.save, 'Saved account without price'
  end

  test 'should not save account without name' do
    account = Account.new owner: users(:one),
                          price: 9.99
    assert_not account.save, 'Saved account without name'
  end

end
