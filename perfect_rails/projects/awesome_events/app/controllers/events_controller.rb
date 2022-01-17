class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  # アソシエーションが1対多の場合、関連付けのメソッド名.buildでmodelの関連付けを行う
  def new
    @event = current_user.created_event.build
  end

  def create
    @event = current_user.created_event.build(event_params)

    if @event.save
      redirect_to @event, notice: "作成しました。"
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :place, :content, :start_at, :end_at
    )
  end
end
