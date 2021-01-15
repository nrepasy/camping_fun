class SignupsController < ApplicationController

  def new
    @activities = Activity.all
    @signup = Signup.new
  end
 
  def create
    signup = Signup.create(signup_params)
    redirect_to "/campers/#{signup.camper_id}"
  end

  def index
    @signups = Signup.all
  end

  def show
    @signup = Signup.find(params[:id])
  end

  private 

  def signup_params
    params.require(:signup).permit(:camper_id, :activity_id, :time)
  end

end
