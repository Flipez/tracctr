require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'save new user' do
    user = User.new username: 'Test',
                    password: :super_secret,
                    email: 'test@testmail.nope',
                    paypal_url: 'http://test.de'
    assert user.save
  end

  test 'should not save user without username' do
    user = User.new password: :super_secret,
                    email: 'test@testmail.nope',
                    paypal_url: 'http://test.de'
    assert_not user.save, 'Saved user without username'
  end

  test 'should not save user without password' do
    user = User.new username: 'Test',
                    email: 'test@testmail.nope',
                    paypal_url: 'http://test.de'
    assert_not user.save, 'Saved user without password'
  end

  test 'should not save user without email' do
    user = User.new username: 'Test',
                    password: :super_secret,
                    paypal_url: 'http://test.de'
    assert_not user.save, 'Saved user without email'
  end

  test 'should not save user without paypal_url' do
    user = User.new username: 'Test',
                    password: :super_secret,
                    email: 'test@testmail.nope'
    assert_not user.save, 'Saved user without paypal_url'
  end

end
