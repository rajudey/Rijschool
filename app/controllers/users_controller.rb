class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Rijschool #{@user.username}"
      redirect_to schools_path(@user)
    else
      render 'new'
    end 
  end
  
  private
  def set_user
      @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:username, :email, :password, :initials, :fname, :mname, :lname, :sex, :add1, :add2, :city, :postcode)
  end  
end