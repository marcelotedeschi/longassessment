class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @permissions = @user.permissions
    @permissionsThroughRoles = @user.role.permissions
    @result = []
    @allPermissions = (@permissions + @permissionsThroughRoles).uniq { |p| p.id }

    @allPermissions.each do |p|
      @result << p.name
    end
  end

  def index
    @role = Role.all
    @user = User.all
    @newUser = User.new
  end

  def create
    @newUser = User.new(user_params.merge(status: "Logged"))
    if @newUser.save
      redirect_to users_path
    elsif @newUser.errors.any?
      @role = Role.all
      @user = User.all
      render 'index'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :role_id)
    end
end

