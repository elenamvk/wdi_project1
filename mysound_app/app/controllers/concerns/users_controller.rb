class UsersController < ApplicationController

#before_actions made for admins

before_action :authenticate_user!, except: [:index, :show]
before_action :set_user, only: [:edit, :update, :destroy]

def index
  @users = User.all #CREATE VIEWS
end

def show
  @user = User.find(params[:id])
end

#create a private method that will show the possibilities ONLY to the admin
#if role == admin then...
#or
#if current_user.admin?
  # do something
#end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:role, :username, :dob, :about, :icon)
  end



end
