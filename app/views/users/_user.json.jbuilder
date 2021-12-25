json.extract! user, :id, :nat, :seed, :gender, :name, :email, :picture_large, :picture_thumbnail, :created_at, :updated_at
json.url user_url(user, format: :json)
