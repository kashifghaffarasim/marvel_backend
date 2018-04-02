class Api::V1::UsersController < ApplicationController
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in("user", @user)
    else
      render :json => {
        :errors => @user.errors.full_messages.to_sentence
      }
    end
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end
