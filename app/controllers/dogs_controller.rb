class DogsController < ApplicationController

  def create

    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
      user_id: current_user.id
    )
    dog.save

    if current_user
      render json:dog
    else
      render json: {message: "Sorry! You must be logged in first!"}
    end
    
  end

end
