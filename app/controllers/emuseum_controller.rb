class EmuseumController < ApplicationController
  def home
  end

  def background
  end

  def news
  end

  def index
  	@subscription = Subscription.all
  end
end
