class EmuseumController < ApplicationController
  def home
  end

  def background
  end

  def news
  end

  def index
  	@i = 0
  	@j = 0
  	@museumowner = MuseumOwner.all.paginate(:page => params[:page], :per_page => 6)
  end
end
