class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if current_user != nil then
        @user = User.find(current_user.id)
      else
        @user = nil
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
