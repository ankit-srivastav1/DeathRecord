class DeceasedsController < ApplicationController

  def new
    @deceased = Deceased.new
  end

  def create
    @deceased = Deceased.new(deceased_params)
    if @deceased.save
      redirect_to deceased_path(@deceased)
    else
      render :action => 'new'
    end
  end


  private

  def deceased_params
    params.require(:deceased).permit(:name,:age,:relationship,:death_date)
  end
end
