class SchoolsController < ApplicationController
  before_action :set_school, only: [:edit, :update, :show, :destroy ]
  def index
    @schools = School.all
  end  
  
  def new
    @school = School.new
  end
  
  def edit
  end
  
  def create
    @school = School.new(school_params)
    if @school.save
      flash[:success] = "Rijschool was successfully saved"
      redirect_to school_path(@school)
    else
      render 'new'
    end
  end
  
  def update
    if @school.update(school_params)
      flash[:success] = "Rijschool was successfully updated"
      redirect_to school_path(@school)
    else
      render 'edit'
    end    
  end
  
  def show
  end
  
  def destroy
     @school.destroy
     flash[:danger] = "Rijschool successfully deleted"
     redirect_to schools_path 
  end
  
  private
  def set_school
      @school = School.find(params[:id])
  end
  def school_params
    params.require(:school).permit(:name, :contact, :description, :link)
  end
end