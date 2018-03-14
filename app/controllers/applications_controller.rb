class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.all
    authorize @applications
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
    authorize @application
  end

  # GET /applications/new
  def new
    @application = current_user.applications.build
    authorize @application
  end

  # GET /applications/1/edit
  def edit
    authorize @application
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = current_user.applications.build(application_params)
    authorize @application

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end

    @status = Status.create(application_id: @application.id)
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    authorize @application
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    authorize @application
    @application.destroy
    respond_to do |format|
      format.html { redirect_to(request.referrer || dashboards_path, notice: 'Application was successfully destroyed.') }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_application
    @application = Application.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def application_params
    params.require(:application).permit(:current_company, :linkedIn_URL, :portfolio_URL, :additional_information, :gender, :race, :veteran_status, :disability_status, :job_id, :resume, :cover, :other)
  end
end
