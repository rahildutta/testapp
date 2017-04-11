json.extract! author, :id, :Name, :Address, :Email, :active, :created_at, :updated_at
json.url author_url(author, format: :json)
