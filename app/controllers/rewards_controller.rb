class RewardsController < ApplicationController

  def new
    @reward = Reward.new
  end

  def create
    binding.pry
  end

end
