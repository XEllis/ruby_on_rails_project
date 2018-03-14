class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  after_action :send_admin_update_mail, only: [:update]

  def send_admin_update_mail
    JobMailer.send_update_email(@status.application.user).deliver_later
  end

  # GET /statuses
  # GET /statuses.json
  def index
    @statuses = Status.all
    authorize @statuses
  end

  # GET /statuses/1
  # GET /statuses/1.json
  def show
    authorize @status    
  end

  # GET /statuses/new
  def new
    @status = Status.new
    authorize @status
  end

  # GET /statuses/1/edit
  def edit
    authorize @status
  end

  # POST /statuses
  # POST /statuses.json
  def create
    @applcation = Applcation.find(params[:application_id])
    @status = @Applicaiton.statuses.build(status_params)
    authorize @status
    @status.save
  end

  # PATCH/PUT /statuses/1
  # PATCH/PUT /statuses/1.json
  def update
    authorize @status
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.json
  def destroy
    authorize @status
    @status.destroy
    respond_to do |format|
      format.html { redirect_to statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:submission_status, :application_id)
    end
end
