class TicketsController < ApplicationController

  
  def new
    @ticket = current_user.tickets.build
  end

  def create
    puts "#{params}"
    @ticket = current_user.tickets.build(event_id: params[:event_id], comment: params[:comment])
    puts "sssssssssssssssssssssssss#{@ticket.inspect}"
    if @ticket.save
      redirect_to event_path(params[:event_id]), notice: "[成功]イベントに参加を表明しました！"
    else
      render :new
    end
  end

  def destroy
    ticket = Ticket.where(event_id: params[:event_id], user_id: current_user.id)
    p "dddddddddddddddddddddddddd#{ticket.inspect}"
    ticket.first.destroy
    redirect_to event_path(params[:id]), notice: "[キャンセル]イベントへの参加をキャンセルしました"
  end
end
