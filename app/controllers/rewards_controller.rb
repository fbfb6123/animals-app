class RewardsController < ApplicationController
  
  def index
    @message = Message.new
    @reward = Reward.where(user_id: current_user.id)
    @messages = Message.where(user_id: current_user.id)
  end

  def new
    @reward = Reward.new
    @rewards = Reward.where(user_id: current_user.id)
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :user_id)
  end

end
