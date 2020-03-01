class RewardsController < ApplicationController
  
  def index
    @message = Message.new
    @reward = Reward.where(user_id: current_user.id)
    @rewards = Reward.where(reward_id: params[:reward_id])
    @messages = Message.where(user_id: current_user.id)
  end

  def show
    
  end

  def new
    @reward = Reward.new
    @rewards = Reward.where(user_id: current_user.id)
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to reward_messages_path(@reward), notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def edit
    @reward = Reward.find(params[:id])
  end

  def update
    @reward = Reward.find(params[:id])
    if @reward.update(reward_params)
      redirect_to root_path, notice: 'グループを更新しました'
    else
      render :edit
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :user_id)
  end

end
