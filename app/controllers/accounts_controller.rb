class AccountsController < ApplicationController

  def index
    @accounts = Account.all
    @accounts_joined = @cu.accounts.map(&:id)
  end

  def show
    @account = Account.find(params[:id])
    @bills = Bill.where(account_id: @account.id)
    @check_bills = Bill.where(account_id: @account.id, state: 'to_be_checked')

    if @account.owner.id == current_user.id
      flash[:success] = 'You are the account owner'
    elsif @account.users.map(&:id).include? current_user.id
      flash[:success] = 'You are an account member'
    else
      flash[:error] = 'Not part of the account'
      redirect_to :back
    end
  end

end
