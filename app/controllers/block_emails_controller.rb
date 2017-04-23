class BlockEmailsController < ApplicationController
  before_action :set_block_email, only: [:show, :edit, :update, :destroy]

  # GET /block_emails
  # GET /block_emails.json
  def index
    @block_emails = BlockEmail.all
  end

  # GET /block_emails/1
  # GET /block_emails/1.json
  def show
  end

  # GET /block_emails/new
  def new
    @block_email = BlockEmail.new
  end

  # GET /block_emails/1/edit
  def edit
  end

  # POST /block_emails
  # POST /block_emails.json
  def create
    @block_email = BlockEmail.new(block_email_params)

    respond_to do |format|
      if @block_email.save
        format.html { redirect_to @block_email, notice: 'Block email was successfully created.' }
        format.json { render :show, status: :created, location: @block_email }
      else
        format.html { render :new }
        format.json { render json: @block_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /block_emails/1
  # PATCH/PUT /block_emails/1.json
  def update
    respond_to do |format|
      if @block_email.update(block_email_params)
        format.html { redirect_to @block_email, notice: 'Block email was successfully updated.' }
        format.json { render :show, status: :ok, location: @block_email }
      else
        format.html { render :edit }
        format.json { render json: @block_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_emails/1
  # DELETE /block_emails/1.json
  def destroy
    @block_email.destroy
    respond_to do |format|
      format.html { redirect_to block_emails_url, notice: 'Block email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block_email
      @block_email = BlockEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_email_params
      params.require(:block_email).permit(:subject, :content)
    end
end
