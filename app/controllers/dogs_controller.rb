class DogsController < ApplicationController
  
  def create

    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    dog.save

    if current_user
      render json:dog
    else
      render json: {message: "Sorry!You must log in first!"}
    end
    
  end

end
