class ProfileController < ApplicationController

  def show
    @user = User.find(session[:user_id])
    @wallet = @user.wallet
    @accounts = @user.accounts
    @ownerships = Account.where(owner: @user)

    @accounts_joinable = Account.all - @user.accounts

    @account_types = ACCOUNT_TYPES
  end

end
