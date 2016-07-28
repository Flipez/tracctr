class BillsController < ApplicationController

  def update
    bill = Bill.find(params[:id])

    user = User.find(session[:user_id])

    if (user.id == bill.wallet.user.id) || (user.id == bill.account.owner.id)
      bill.update state: params[:state]
      flash[:success] = 'Bill updated'
    else
      flash[:error] = 'Bill not updated'
    end
    redirect_to :back
  end

end

