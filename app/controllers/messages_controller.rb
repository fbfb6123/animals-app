class MessagesController < ApplicationController


  def index
    @message = Message.new
    @messages = Message.where(user_id: current_user.id)
  end

  def new
    @message = Message.all
  end
 
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path, notice: '報酬を設定しました'
    else
      redirect_to root_path
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id)
  end
  
end
