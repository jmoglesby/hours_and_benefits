json.extract! hours_log, :id, :hours_worked, :date, :user_id, :created_at, :updated_at
json.url hours_log_url(hours_log, format: :json)
