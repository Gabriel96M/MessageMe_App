class UsersController < ApplicationController

    # GET /users/new
    def new
    end
  
    # POST /users
    # POST /users.json
    def create
      @user = User.new(user_params)
        if @user.save
          flash[:success] = 'User was successfully created.'
            redirect_to login_path 
        else
            flash.now[:error] = 'There was something wrong with your login details.'
            render 'new'
        end
    end 
private
def user_params
    params.permit(:username, :password)
  end
end