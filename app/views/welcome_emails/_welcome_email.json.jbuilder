json.extract! welcome_email, :id, :subject, :content, :created_at, :updated_at
json.url welcome_email_url(welcome_email, format: :json)
