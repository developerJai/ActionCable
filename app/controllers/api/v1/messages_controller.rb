class Api::V1::MessagesController < Api::V1::ApplicationsController
   #Api Response using json jbuilder
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(content:params[:content])
    ActionCable.server.broadcast "room_channel",content: @message.content 
  end
end
