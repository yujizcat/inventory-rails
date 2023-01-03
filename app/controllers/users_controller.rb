class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def index
        @user = current_user
        # @user.save!
        render json: @user
    end
end