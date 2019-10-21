class UsersController < ApplicationController
  
  def index
   @users = User.all

    if @users.present?
      render json: @users, status: :ok
    else 
      render json: { error: 'No data was found' }, status: :not_found
    end
  end

end
