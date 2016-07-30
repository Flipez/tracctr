class OneShotsController < ApplicationController

  def index
    @one_shots = OneShot.all
    @one_shot = OneShot.new
  end

  def show
    @one_shot = OneShot.find(params[:id])
    @bullets = @one_shot.bullets
    @bullet = Bullet.new
  end

  def create
    one_shot = OneShot.new one_shot_params
    if one_shot.save
      flash[:sucess] = 'OneShot created'
      redirect_to :back
    end
  end

  private

  def one_shot_params
    params.require(:one_shot).permit(:name, :description, :owner_id)
  end

end
