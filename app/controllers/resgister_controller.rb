class ResgisterController < ApplicationController
  def index
  end

  def create 
    resgister = resgister.new(create_params)
    {
     first_name: mohana,
     last_name: soundharya,
     email: register@gmail.com,
     mobile_number: 9876543210
    }

  end


  def show
  end

  def new
  end

  def edit
  end
end
