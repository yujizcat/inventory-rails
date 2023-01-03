class UsersController < ApplicationController
    # before_action :set_user, only: [:index]
    skip_before_action :verify_authenticity_token

    def index
        @users = User.all
        render json: @users
    end
end