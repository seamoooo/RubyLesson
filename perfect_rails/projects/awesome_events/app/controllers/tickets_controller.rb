class TicketsController < ApplicationController

  def new
    raise ActionController::RoutingError, "ログインの状態にしてください"
  end

  def create
    event = Event.find(params[:event_id])

    @ticket = current_user.tickets.build do |t|
      t.event = event
      t.commnent = params[:ticket][:comment]
    end

    if @ticket.save
      redirect_to event, notice: "このイベントに参加しました"
    end
  end

  def destroy
    ticket = current_user.tickets.find_by!(event_id: params[:event_id])
    # destroy!にすることにより、存在しないIDの場合はエラーが発生する
    ticket.destroy!
    redirect_to event_path(params[:event_id]), notice: "参加キャンセルしました。"
  end
end
