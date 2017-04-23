class ConfirmationEmailsController < ApplicationController
  before_action :set_confirmation_email, only: [:show, :edit, :update, :destroy]

  # GET /confirmation_emails
  # GET /confirmation_emails.json
  def index
    @confirmation_emails = ConfirmationEmail.all
  end

  # GET /confirmation_emails/1
  # GET /confirmation_emails/1.json
  def show
  end

  # GET /confirmation_emails/new
  def new
    @confirmation_email = ConfirmationEmail.new
  end

  # GET /confirmation_emails/1/edit
  def edit
  end

  # POST /confirmation_emails
  # POST /confirmation_emails.json
  def create
    @confirmation_email = ConfirmationEmail.new(confirmation_email_params)

    respond_to do |format|
      if @confirmation_email.save
        format.html { redirect_to @confirmation_email, notice: 'Confirmation email was successfully created.' }
        format.json { render :show, status: :created, location: @confirmation_email }
      else
        format.html { render :new }
        format.json { render json: @confirmation_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmation_emails/1
  # PATCH/PUT /confirmation_emails/1.json
  def update
    respond_to do |format|
      if @confirmation_email.update(confirmation_email_params)
        format.html { redirect_to @confirmation_email, notice: 'Confirmation email was successfully updated.' }
        format.json { render :show, status: :ok, location: @confirmation_email }
      else
        format.html { render :edit }
        format.json { render json: @confirmation_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmation_emails/1
  # DELETE /confirmation_emails/1.json
  def destroy
    @confirmation_email.destroy
    respond_to do |format|
      format.html { redirect_to confirmation_emails_url, notice: 'Confirmation email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmation_email
      @confirmation_email = ConfirmationEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confirmation_email_params
      params.require(:confirmation_email).permit(:subject, :content)
    end
end
