json.extract! application, :id, :current_company, :linkedIn_URL, :portfolio_URL, :additional_information, :gender, :race, :veteran_status, :disability_status, :created_at, :updated_at
json.url application_url(application, format: :json)
