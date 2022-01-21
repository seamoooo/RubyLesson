class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    @tickets = @event.tickets.includes(:user).order(:created_at)
  end

  def create
    @event = current_user.created_event.build(event_params)

    if @event.save
      redirect_to @event, notice: "作成しました。"
    end
  end

  # アソシエーションが1対多の場合、関連付けのメソッド名.buildでmodelの関連付けを行う
  def new
    @event = current_user.created_event.build
  end

  def edit
    # modelでリレーションを貼っているので、参照可能
    @event = current_user.created_event.find(params[:id])
  end

  def update
    # 作成したユーザーのみがアクセス可能なように設定
    @event = current_user.created_event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: "更新しました。"
    end
  end

  def destroy
    @event = current_user.created_event.find(params[:id])
    @event.destroy!
    redirect_to root_path, notice: "削除しました"
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :place, :content, :start_at, :end_at
    )
  end
end
