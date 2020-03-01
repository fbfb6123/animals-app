class MessagesController < ApplicationController

  # before_action :set_reward

  def index
    @message = Message.new
    @reward = Reward.where(user_id: current_user.id)
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
      render :new
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id, :reward_id)
  end

  # def set_reward
  #   @reward = Reward.find(params[:reward_id])
  # end
  
end
