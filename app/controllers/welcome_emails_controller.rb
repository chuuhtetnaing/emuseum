class WelcomeEmailsController < ApplicationController
  before_action :set_welcome_email, only: [:show, :edit, :update, :destroy]

  # GET /welcome_emails
  # GET /welcome_emails.json
  def index
    @welcome_emails = WelcomeEmail.all
  end

  # GET /welcome_emails/1
  # GET /welcome_emails/1.json
  def show
  end

  # GET /welcome_emails/new
  def new
    @welcome_email = WelcomeEmail.new
  end

  # GET /welcome_emails/1/edit
  def edit
  end

  # POST /welcome_emails
  # POST /welcome_emails.json
  def create
    @welcome_email = WelcomeEmail.new(welcome_email_params)

    respond_to do |format|
      if @welcome_email.save
        format.html { redirect_to @welcome_email, notice: 'Welcome email was successfully created.' }
        format.json { render :show, status: :created, location: @welcome_email }
      else
        format.html { render :new }
        format.json { render json: @welcome_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcome_emails/1
  # PATCH/PUT /welcome_emails/1.json
  def update
    respond_to do |format|
      if @welcome_email.update(welcome_email_params)
        format.html { redirect_to @welcome_email, notice: 'Welcome email was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcome_email }
      else
        format.html { render :edit }
        format.json { render json: @welcome_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_emails/1
  # DELETE /welcome_emails/1.json
  def destroy
    @welcome_email.destroy
    respond_to do |format|
      format.html { redirect_to welcome_emails_url, notice: 'Welcome email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome_email
      @welcome_email = WelcomeEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_email_params
      params.require(:welcome_email).permit(:subject, :content)
    end
end
