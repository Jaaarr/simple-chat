class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @messages = @chat.messages
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.create(chat_params)
    if @chat.errors.empty?
      respond_to do |format|
        format.html do
          redirect_to @chat
        end
        
        format.turbo_stream
      end
    else
      render 'new'
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end
end
