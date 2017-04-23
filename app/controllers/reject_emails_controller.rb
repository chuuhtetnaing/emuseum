class RejectEmailsController < ApplicationController
  before_action :set_reject_email, only: [:show, :edit, :update, :destroy]

  # GET /reject_emails
  # GET /reject_emails.json
  def index
    @reject_emails = RejectEmail.all
  end

  # GET /reject_emails/1
  # GET /reject_emails/1.json
  def show
  end

  # GET /reject_emails/new
  def new
    @reject_email = RejectEmail.new
  end

  # GET /reject_emails/1/edit
  def edit
  end

  # POST /reject_emails
  # POST /reject_emails.json
  def create
    @reject_email = RejectEmail.new(reject_email_params)

    respond_to do |format|
      if @reject_email.save
        format.html { redirect_to @reject_email, notice: 'Reject email was successfully created.' }
        format.json { render :show, status: :created, location: @reject_email }
      else
        format.html { render :new }
        format.json { render json: @reject_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reject_emails/1
  # PATCH/PUT /reject_emails/1.json
  def update
    respond_to do |format|
      if @reject_email.update(reject_email_params)
        format.html { redirect_to @reject_email, notice: 'Reject email was successfully updated.' }
        format.json { render :show, status: :ok, location: @reject_email }
      else
        format.html { render :edit }
        format.json { render json: @reject_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reject_emails/1
  # DELETE /reject_emails/1.json
  def destroy
    @reject_email.destroy
    respond_to do |format|
      format.html { redirect_to reject_emails_url, notice: 'Reject email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reject_email
      @reject_email = RejectEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reject_email_params
      params.require(:reject_email).permit(:subject, :content)
    end
end
