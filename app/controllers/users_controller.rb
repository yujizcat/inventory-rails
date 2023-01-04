class UsersController < ApplicationController
    # before_action :set_user, only: [:index]
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!

    def index
        @users = User.all
        puts current_user.to_key
        render json: @users
    end
end