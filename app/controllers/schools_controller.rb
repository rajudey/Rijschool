class SchoolsController < ApplicationController
  def new
    @school = School.new
  end
  
  def create
    #render plain: params[:school].inspect
    @school = School.new(school_params)
    @school.save
    redirect_to schools_show(@school)
  end
  
  def show
  end
  
  private
  def school_params
    params.require(:school).permit(:name, :contact, :description, :link)
  end
end