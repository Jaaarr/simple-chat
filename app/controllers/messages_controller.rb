class MessagesController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @message = @chat.messages.build(message_params)
    if @message.save
      
    end
  end

  private 
  
  def message_params
    params.require(:message).permit(:body)
  end
end
