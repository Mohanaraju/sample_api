class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :update, :destroy]

  # GET /register
  def index
    @registers = Register.all

    render json: @register
  end

  # GET /registers/1
  def show
    render json: @register
  end

  # POST /register
  def create
    @register = Register.new(register_params)
    
    (
     first_name: mohana,
     last_name: soundharya,
     email: register@gmail.com,
     mobile_number: 9876543210
     )
     
    

    if @register.save
      render json: @register, status: :created, location: @register
    else
      render json: @register.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /register/1
  def update
    if @register.update(register_params)
      render json: @register
    else
      render json: @register.errors, status: :unprocessable_entity
    end
  end

  # DELETE /register/1
  def destroy
    @register.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def register_params
      params.fetch(:register, {})
    end
end
