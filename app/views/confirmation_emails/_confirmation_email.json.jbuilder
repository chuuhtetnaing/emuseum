json.extract! confirmation_email, :id, :subject, :content, :created_at, :updated_at
json.url confirmation_email_url(confirmation_email, format: :json)
