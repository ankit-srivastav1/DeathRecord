class HomesController < ApplicationController

         before_action :authenticate_user!
    def index
      @deceased= Deceased.all
    end

    def new
      @deceased = Deceased.new
    end

    def show
      @deceased = Deceased.find(params[:id])
    end

    def create
      @deceased = current_user.deceaseds.new(deceased_params)
      if @deceased.save

        redirect_to deceased_path(@deceased)
      else
        flash[:success] = "record created"
        render :action => 'new'
      end
    end


    def edit
      @deceased = Deceased.find(params[:id])
    end

    def update
      @deceased = Deceased.find(params[:id])

      if @deceased.update_attributes(deceased_params)
        flash[:success] = "Profile updated"
        redirect_to "/deceaseds"
      else
        render "edit"
      end
    end

    def destroy

    end


    private

    def deceased_params
      params.require(:deceased).permit(:name,:age,:relationship,:death_date,:users_id)
    end
  end
