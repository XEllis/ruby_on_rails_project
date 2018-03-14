json.extract! status, :id, :submission_status, :created_at, :updated_at
json.url status_url(status, format: :json)
