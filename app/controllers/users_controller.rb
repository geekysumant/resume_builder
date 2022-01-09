class UsersController < ApplicationController
    def new
        @user=User.new
    end

    def create
        @user=User.new(user_params)
        @user.profile = Profile.new
        if @user.save
            flash[:success] = "You have successfully signed up!"
            redirect_to login_path
        else
            flash.now[:danger] = 'Something went wrong'
            render :new
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password,:password_confirmation)
        end
end
