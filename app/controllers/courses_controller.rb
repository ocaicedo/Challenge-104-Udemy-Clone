class CoursesController < ApplicationController
	before_action :authenticate_user!

	def index
    @courses = Course.all
  end

	def show
    @course = Course.find(params[:id])
  	end


	def new

	end

	def create
		@course = Course.new(course_params)
		@course.owner = current_user
   		@course.save
  		redirect_to @course
	end
 

private
  def course_params
    params.require(:course).permit(:name, :description, :owner_id)
  end
end
