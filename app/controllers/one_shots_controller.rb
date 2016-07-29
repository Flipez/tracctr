class OneShotsController < ApplicationController

  def index
    @one_shots = OneShot.all
  end

  def show
    @one_shot = OneShot.find(params[:id])
  end

end
