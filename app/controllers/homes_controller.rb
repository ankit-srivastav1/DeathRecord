class HomesController < ApplicationController

  before_action :authenticate_user!
  def index
    @deceased= Deceased.all
  end

  
end
