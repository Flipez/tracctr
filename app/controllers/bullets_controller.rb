class BulletsController < ApplicationController

  def create
    bullet = Bullet.new bullet_params
    if bullet.save
      flash[:sucess] = 'Bullet created'
      redirect_to :back
    end
  end

  private

  def bullet_params
    params.require(:bullet).permit(:name, :cost, :user_id, :one_shot_id)
  end

end
