class MessagesController < ApplicationController

   before_action :set_reward

  def index
    @message = Message.new
    # @reward = Reward.where(user_id: current_user.id)
    # @messages = Message.where(user_id: current_user.id)
    @messages = @reward.messages.includes(:user)
  end

  def show
    @messages = @reward.messages.includes(:user)
  end

  def new
    @message = Message.all
  end
 
  def create
    @message = @reward.messages.new(message_params)
    if @message.save
      redirect_to reward_messages_path(@reward), notice: 'メッセージが送信されました'
    else
      @messages = @reward.messages.includes(:user)
      render :index
    end
  end

  def edit
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

   def set_reward
     @reward = Reward.find(params[:reward_id])
   end
  
end
