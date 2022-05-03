class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    
    def index 
      @users = User.all
    end 
  
    def show 
    end
  
    def edit 
    end

    def update
    end

    def destroy
    end

    private 
    def set_user 
      @users = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound =>error
      redirect_to users_path, notice: "Sorry record is not their"
    end
  
    def user_params 
      params.require(:user).permit(:image,:first_name,:last_name,:email,:phone,:gender)
    end
end
  
    