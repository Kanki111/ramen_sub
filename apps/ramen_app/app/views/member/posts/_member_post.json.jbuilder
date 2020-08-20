json.extract! member_post, :id, :title, :place, :image, :ramen_type, :latitude, :longitude, :created_at, :updated_at
json.url member_post_url(member_post, format: :json)
