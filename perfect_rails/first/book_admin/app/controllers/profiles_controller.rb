class ProfilesController < ApplicationController
  def show
  end

  def edit
  end

  def update
    user = current_user
    user.update(user_params)
  end

  private

  # 外部のパラメータを信用せずに、明示的に許可したもののみにする
  # strong parameters
  def user_params
    params.require(:user).permit(:name, :password)
  end
end
