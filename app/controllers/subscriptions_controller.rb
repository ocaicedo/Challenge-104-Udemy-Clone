class SubscriptionsController < ApplicationController

def index
	
end

def new
end

def show
	@course = Course.find(params[:id])
end

def create
 	@course = Course.find(params[:course_id])
 	@course.users << current_user
 	@course.save  
 	redirect_to @course
end

end
