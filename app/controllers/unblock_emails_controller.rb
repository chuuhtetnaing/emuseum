class UnblockEmailsController < ApplicationController
  before_action :set_unblock_email, only: [:show, :edit, :update, :destroy]

  # GET /unblock_emails
  # GET /unblock_emails.json
  def index
    @unblock_emails = UnblockEmail.all
  end

  # GET /unblock_emails/1
  # GET /unblock_emails/1.json
  def show
  end

  # GET /unblock_emails/new
  def new
    @unblock_email = UnblockEmail.new
  end

  # GET /unblock_emails/1/edit
  def edit
  end

  # POST /unblock_emails
  # POST /unblock_emails.json
  def create
    @unblock_email = UnblockEmail.new(unblock_email_params)

    respond_to do |format|
      if @unblock_email.save
        format.html { redirect_to @unblock_email, notice: 'Unblock email was successfully created.' }
        format.json { render :show, status: :created, location: @unblock_email }
      else
        format.html { render :new }
        format.json { render json: @unblock_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unblock_emails/1
  # PATCH/PUT /unblock_emails/1.json
  def update
    respond_to do |format|
      if @unblock_email.update(unblock_email_params)
        format.html { redirect_to @unblock_email, notice: 'Unblock email was successfully updated.' }
        format.json { render :show, status: :ok, location: @unblock_email }
      else
        format.html { render :edit }
        format.json { render json: @unblock_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unblock_emails/1
  # DELETE /unblock_emails/1.json
  def destroy
    @unblock_email.destroy
    respond_to do |format|
      format.html { redirect_to unblock_emails_url, notice: 'Unblock email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unblock_email
      @unblock_email = UnblockEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unblock_email_params
      params.require(:unblock_email).permit(:subject, :content)
    end
end
