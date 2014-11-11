class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    redirect_to pins_index_path
  end
end
