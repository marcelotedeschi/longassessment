class UsersController < ApplicationController

  def userpermissions(user)
    @permissions = user.permissions
    @result = []
    @permissions.each do |p|
      @result << p.name
    end
    return @result
  end

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
    @user = User.new(user_params.merge(status: "Logged"))
    if @user.save
      redirect_to users_path
    elsif @games.errors.any?
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :role_id)
    end

end

