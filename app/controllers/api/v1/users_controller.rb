module Api
  module V1
    class UsersController < ApiController
      def index
        users = User.all
        render json: users
      end

      def show
        p params
        user = User.find(params[:id])
        render json: user
      end
    end
  end
end
