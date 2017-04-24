json.extract! user, :id, :E_mail, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)
