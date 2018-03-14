class UsersController < ApplicationController

  def recruiter_jobs
    @user = User.find(params[:id])
    @jobs = @user.jobs
  end

  def job_seeker_applications
    @user = User.find(params[:id])
    authorize @user
    @applications = @user.applications
  end

  def index
    @users = User.all
    authorize @users
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(params[:user].permit(:first_name, :last_name,
                                          :role, :email, :password,
                                          :password_confirmation))
    authorize @user
    if @user.save
      flash[:notice] = 'Successfully created User.'
      redirect_to users_admin_index_path
    else
      flash[:alert] = 'There was a problem creating User.'
      render action: 'new'
    end
  end

  def show
    id = params[:id]
    @user = User.find(id)
    authorize @user
  end

  def edit
    @user = User.find params[:id]
    authorize @user
  end

  def update
    @user = User.find params[:id]
    authorize @user
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if
        params[:user][:password].blank? &&
        params[:user][:password_confirmation].blank?
    params[:user].delete(:current_password) if
        params[:user][:password].present? &&
        params[:user][:current_password].blank?
    params.require(:user)
    permitted = params[:user].permit(:first_name, :last_name, :role,
                                     :email, :phone, :company_id)
    if @user.update_attributes(permitted)
      flash[:notice] = 'User was successfully updated.'
      @user.update_attributes(company_id: '') if @user.role == 'Job Seeker'
      @user.update_attributes(phone: nil) if @user.role == 'Recruiter'
      redirect_to dashboards_path
    else
      render 'edit' # note, 'edit' template can access @movie's field values!
    end
  end

  def destroy
    @user = User.find params[:id]
    authorize @user
    @user.destroy
    if current_user.id != @user.id
      flash[:notice] = 'User was successfully deleted.'
      redirect_to users_admin_index_path
    else
      flash[:notice] = 'Your Account was successfully deleted.'
      redirect_to dashboards_path
    end
  end
end
