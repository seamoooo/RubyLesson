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
end
