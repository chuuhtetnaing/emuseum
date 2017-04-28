class EmuseumController < ApplicationController

  def home
  	@i = 0
  	@j = 0
  	@museumowner = MuseumOwner.last(3)
  end

  def background
  end

  def news
  end

  def index
  	@i = 0
  	@j = 0
    @division = Division.all
    if(params[:commit] == "Search" && !params[:museum_type].empty? | !params[:division_id].empty? | !params[:exhibition_type].empty? | !params[:search].empty?)
       @museum_type = params[:museum_type]
       @division_id = params[:division_id]
       @exhibition_type = params[:exhibition_type]
       @search = params[:search].downcase
       @museumowner = MuseumOwner.all
       @mo_sub = Subscription.all
       
       case
        when @exhibition_type.empty? && @museum_type.empty? && @search.empty?
          @mo_sub = @mo_sub.where(division_id: @division_id)
        when @division_id.empty? && @exhibition_type.empty? && @museum_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
        when @division_id.empty? && @exhibition_type.empty? && @search.empty?
          @mo_sub = @mo_sub.where("#{@museum_type}": true)
        when @division_id.empty? && @museum_type.empty? && @search.empty?
          @mo_sub = @mo_sub.where(exhibition_type: "#{@exhibition_type}")
        when @division_id.empty? && @exhibition_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where("#{@museum_type}")
        when @division_id.empty? && @museum_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where(exhibition_type: "#{@exhibition_type}")
        when @division_id.empty? && @search.empty?
          @mo_sub = @mo_sub.where("#{@museum_type}": true, exhibition_type: "#{@exhibition_type}")
        when @exhibition_type.empty? && @museum_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where(division_id: @division_id)
        when @exhibition_type.empty? && @search.empty?
          @mo_sub = @mo_sub.where("#{@museum_type}": true, division_id: @division_id)
        when @museum_type.empty? && @search.empty?
          @mo_sub = @mo_sub.where(exhibition_type: "#{@exhibition_type}", division_id: @division_id)
        when @division_id.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where("#{@museum_type}": true, exhibition_type: "#{@exhibition_type}")
        when @exhibition_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where("#{@museum_type}": true, division_id: @division_id)
        when @museum_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where(exhibition_type: "#{@exhibition_type}", division_id: @division_id)
        when @search.empty?
          @mo_sub = @mo_sub.where("#{@museum_type}": true, exhibition_type: "#{@exhibition_type}", division_id: @division_id)
        when !@search.empty? && !@division_id.empty? && !@exhibition_type.empty? && !@museum_type.empty?
          @mo_sub = @mo_sub.where("lower(museum_name) LIKE ? OR lower(detail) LIKE ?" , "%#{@search}%", "%#{@search}%")
          @mo_sub = @mo_sub.where("#{@museum_type}": true, exhibition_type: "#{@exhibition_type}", division_id: @division_id)
        end
        @mo_sub = @museumowner.where(subscription_id: @mo_sub.ids)
       @museumowner = @mo_sub.paginate(:page => params[:page], :per_page => 6)

    else
        @museumowner = MuseumOwner.all.paginate(:page => params[:page], :per_page => 6)
    end
  	
  end
end
