class SpicesController < ApplicationController
    before_action :set_spice, only: [:update, :destroy]
  
    # GET /spices
    def index
      spices = Spice.all
      render json: spices
    end
  
    # POST /spices
    def create
      spice = Spice.create(spice_params)
      render json: spice, status: :created
    end
  
    # PATCH /spices/:id
    def update
      @spice.update(spice_params)
      render json: @spice
    end
  
    # DELETE /spices/:id
    def destroy
      @spice.destroy
      head :no_content
    end
  
    private
  
    def set_spice
      @spice = Spice.find(params[:id])
    end
  
    def spice_params
      params.permit(:title, :image, :description, :notes, :rating)
    end
  end
  