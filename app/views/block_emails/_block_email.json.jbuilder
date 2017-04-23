json.extract! block_email, :id, :subject, :content, :created_at, :updated_at
json.url block_email_url(block_email, format: :json)
