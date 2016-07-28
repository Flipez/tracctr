require 'test_helper'

class WalletTest < ActiveSupport::TestCase
  test 'save new wallet' do
    wallet = Wallet.new user: users(:one)
    assert wallet.save
  end
  
  test 'should not save wallet without user' do
    wallet = Wallet.new
    assert_not wallet.save, 'Saved wallet without user'
  end
end
