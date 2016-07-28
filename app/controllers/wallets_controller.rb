class WalletsController < ApplicationController

  def create
    wallet = Wallet.new user: current_user
    if wallet.save
      flash[:success] = 'Successfully created wallet'
    end
    redirect_to :back
  end
end
