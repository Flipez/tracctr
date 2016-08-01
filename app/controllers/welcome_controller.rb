class WelcomeController < ApplicationController
  
  skip_before_filter :authorize

  def index
    @user_count = User.count
    @account_count = Account.count
    @bill_count = Bill.count
    @one_shot_count = OneShot.count
    @bullet_count = Bullet.count
  end

end
