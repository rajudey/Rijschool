class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end  
  
  def new
    @school = School.new
  end
  
  def edit
    @school = School.find(params[:id])
  end
  
  def create
    @school = School.new(school_params)
    if @school.save
      flash[:notice] = "Rijschool was successfully saved"
      redirect_to school_path(@school)
    else
      render 'new'
    end
  end
  
  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      flash[:notice] = "Rijschool was successfully updated"
      redirect_to school_path(@school)
    else
      render 'edit'
    end    
  end
  
  def show
    @school = School.find(params[:id])
  end
  
  private
  def school_params
    params.require(:school).permit(:name, :contact, :description, :link)
  end
end