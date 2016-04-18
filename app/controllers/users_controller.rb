class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy ]
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Rijschool #{@user.username}"
      redirect_to schools_path 
    else
      render 'new'
    end 
  end

  def edit
  end
  
  def update
    if @user.update(user_params)
      flash[:success] = "User was successfully updated"
      redirect_to schools_path 
    else
      render 'edit'
    end    
  end
  
  def destroy
     @user.destroy
     flash[:danger] = "User successfully deleted"
     redirect_to users_path 
  end  
  
  private
  def set_user
      @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:username, :email, :password, :initials, :fname, :mname, :lname, :sex, :add1, :add2, :city, :postcode)
  end  
end