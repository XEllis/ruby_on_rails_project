Rails.application.routes.draw do
  resources :statuses, only: [:show, :edit, :update]

  resources :applications
  resources :jobs do
    resources :applications, only: [:index]
  end
  get 'jobs/:id/job_applications' => 'jobs#job_applications', :as => :custom_job_applications

  resources :companies do
    resources :jobs, only: [:index]
  end
  get 'companies/:id/company_jobs' => 'companies#company_jobs', :as => :custom_company_jobs


  resources :dashboards, only: [:index]
  resources :searches, only: [:new, :create, :show]
  resources :users_admin, controller: 'users' do
    resources :jobs, only: [:index]
    resources :applications, only: [:index]
  end
  get 'users_admin/:id/recruiter_jobs' => 'users#recruiter_jobs', :as => :custom_recruiter_jobs
  get 'users_admin/:id/job_seeker_applications' => 'users#job_seeker_applications', :as => :custom_job_seeker_applications

  root to: 'dashboards#index'

  match '/privacypolicy' => 'pages#privacypolicy', via: [:get]

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

end
