class SpicesController < ApplicationController

    #get Spices
    def index
        spices = Spice.all
        render json: spices
    end

    # get single spice
    # def show 
    #     spice = Spice.find_by(id: params[:id])
    #     if spice
    #       render json: spice, status: :ok  
    #     else
    #       render json: { error: "Couldn't find Spice"}, status: :not_found
    #     end
    # end

    # Post a Spice
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    # Delete a Spice
    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
    end

    # Update a Spice 
    def update
        
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice, status: :created
    end

    private

    def spice_params
        params.permit(:title, :description, :image, :notes, :rating)
    end
end