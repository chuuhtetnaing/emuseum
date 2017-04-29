class MuseumOwnersController < ApplicationController
  before_action :set_museum_owner, only: [:show, :edit, :update, :destroy]

  # GET /museum_owners
  # GET /museum_owners.json
  def index
    @i=1
    @museum_owners = MuseumOwner.all
    @subscriptions = Subscription.all
    @sub_mo = @subscriptions.where(accept_or_reject: 'accepted')
  end

  # GET /museum_owners/1
  # GET /museum_owners/1.json
  def show
  end

  def block
    @id = params[:sub_id]
    @museum_owner = MuseumOwner.find_by(id: @id)
    @museum_owner.update(BlockUnblockBy: current_admin.id)
    @museum_owner.update(blocked: true)
    @block_email = BlockEmail.first
    UserMailer.block_email(@museum_owner, @block_email).deliver_now
    redirect_to museum_owners_url
  end

  def unblock
    @id = params[:sub_id]
    @museum_owner = MuseumOwner.find_by(id: @id)
    @museum_owner.update(BlockUnblockBy: current_admin.id)
    @museum_owner.update(blocked: false)
    @unblock_email = UnblockEmail.first
    UserMailer.unblock_email(@museum_owner, @unblock_email).deliver_now
    redirect_to museum_owners_url
  end

  # GET /museum_owners/new
  def new
    @museum_owner = MuseumOwner.new
  end

  # GET /museum_owners/1/edit
  def edit
  end

  # POST /museum_owners
  # POST /museum_owners.json
  def create
    @museum_owner = MuseumOwner.new(museum_owner_params)

    respond_to do |format|
      if @museum_owner.save
        format.html { redirect_to @museum_owner, notice: 'Museum owner was successfully created.' }
        format.json { render :show, status: :created, location: @museum_owner }
      else
        format.html { render :new }
        format.json { render json: @museum_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /museum_owners/1
  # PATCH/PUT /museum_owners/1.json
  def update
    respond_to do |format|
      if @museum_owner.update(museum_owner_params)
        format.html { redirect_to @museum_owner, notice: 'Museum owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @museum_owner }
      else
        format.html { render :edit }
        format.json { render json: @museum_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /museum_owners/1
  # DELETE /museum_owners/1.json
  def destroy
    @museum_owner.destroy
    respond_to do |format|
      format.html { redirect_to museum_owners_url, notice: 'Museum owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_museum_owner
      @museum_owner = MuseumOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def museum_owner_params
      params.require(:museum_owner).permit(:subscription_id, :username, :password, :org_name_eng, :email_address, :current_website, :blocked)
    end
end
