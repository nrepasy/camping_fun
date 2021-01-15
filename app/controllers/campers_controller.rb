class CampersController < ApplicationController



    def index
        @campers = Camper.all
    end

    def new
        @camper = Camper.new
    end
    
    def create
        new_camper = Camper.create(camper_params)
        redirect_to campers_path
    end
  
    def show

        @camper = Camper.find(params[:id])
        @signups = Signup.all.select(params[:id])
       
    end 


    private 

    def camper_params
      params.require(:camper).permit(:name, :age)
    end
  
end
