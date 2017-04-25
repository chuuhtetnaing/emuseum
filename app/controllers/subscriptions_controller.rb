class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @subscriptions = Subscription.all
    @division = Division.all
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  def confirmation
    @subscriptions = Subscription.all
  end

  def confirm
    
    @id = params[:sub_id]
    @subscriber = Subscription.find_by(id: @id)
    @subscriber.update(accept_or_reject: 'accepted')
    @museum_owner = MuseumOwner.new
    @museum_owner.subscription_id = @subscriber.id
    @museum_owner.username = @subscriber.email_address
    @museum_owner.email_address = @subscriber.email_address
    @museum_owner.password = @string
    @museum_owner.org_name_eng = @subscriber.org_name_eng
    @museum_owner.current_website = @subscriber.current_website
    @museum_owner.save
    @confirmation = ConfirmationEmail.first
    UserMailer.confirmation_email(@museum_owner, @confirmation).deliver_now
    redirect_to admins_confirmation_url
  end

  def reject
    @id = params[:sub_id]
    @subscriber = Subscription.find_by(id: @id)
    @subscriber.update(accept_or_reject: 'rejected')
    @reject_email = RejectEmail.first
    UserMailer.reject_email(@subscriber, @reject_email).deliver_now
    redirect_to admins_confirmation_url
  end

  def confirmagain
    
    @id = params[:sub_id]
    @subscriber = Subscription.find_by(id: @id)
    @subscriber.update(accept_or_reject: 'accepted')
    @museum_owner = MuseumOwner.new
    @museum_owner.subscription_id = @subscriber.id
    @museum_owner.username = @subscriber.email_address
    @museum_owner.email_address = @subscriber.email_address
    @museum_owner.password = @string
    @museum_owner.org_name_eng = @subscriber.org_name_eng
    @museum_owner.current_website = @subscriber.current_website
    @museum_owner.save
    @confirmation = ConfirmationEmail.first
    UserMailer.confirmation_email(@museum_owner, @confirmation).deliver_now
    redirect_to admins_confirmation_url
  end
  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        @welcome_email = WelcomeEmail.first
        UserMailer.welcome_email(@subscription, @welcome_email).deliver_now
        format.html { redirect_to @subscription, notice: 'Subscription was successfully created.' }
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptions/1
  # PATCH/PUT /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to @subscription, notice: 'Subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:org_name_thai,:division_id , :org_abbr_thai, :org_name_eng, :org_abbr_eng, :email_address, :type_of_org_private_sector, :type_of_org_government_sector, :type_of_org_education_institute, :type_of_org_other, :street_address, :tambon, :amphur, :province, :postal_code, :telephone, :house_in_temple, :house_in_local_museum, :house_in_government_agency_or_uni, :house_in_other, :museum_type_art_museum, :museum_type_modern_art_museum, :museum_type_natural_history_museum, :museum_type_science_museum_or_machinery_museum, :museum_type_anthropology_museum, :museum_type_history_and_archaeology_museum, :museum_type_local_museum, :museum_type_university_or_institute_museum, :museum_type_other, :exhibition_type_permanent_collection, :exhibition_type_temporary_rotated_collection, :displayed_object_type_pottery, :displayed_object_type_natural_history, :displayed_object_type_public_health_medicine, :displayed_object_type_religious, :displayed_object_type_archaeology, :displayed_object_type_history, :displayed_object_type_way_of_life_local_wisdom, :displayed_object_type_historical_house_building, :displayed_object_type_textile_clothing, :displayed_object_type_performance_arts, :displayed_object_type_tribes, :displayed_object_type_biography, :displayed_object_type_architecture, :displayed_object_type_military_war, :displayed_object_type_science_and_technology, :displayed_object_type_other, :current_website)
    end
end
