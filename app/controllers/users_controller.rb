class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            if params[:concerns]
                params[:concerns].each do |c|
                    @healthconcern = @user.health_concerns.create(name: c)
                end
            end
            flash[:success] = "Welcome to Fork-Friendly!"
            redirect_to '/'
        else
            
          render 'new'
        end
    end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
end
