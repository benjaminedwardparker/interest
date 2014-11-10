class PinsController < ApplicationController
  before_action :authenticate_user!
  def index
    @pins = Pin.all
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(params.require(:pin).permit(:url, :photo, :notes))
    @pin.save
    @pins = Pin.all
    @pin = Pin.new
  end
end
