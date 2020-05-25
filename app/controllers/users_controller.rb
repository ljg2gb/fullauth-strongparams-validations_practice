class UsersController < ApplicationController
    def index

    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    private
    def user_params
        params.require(:user).permit([:username, :password])
    end
end

# {
#             username: params[:username],
#             password: params[:password]
#         }
