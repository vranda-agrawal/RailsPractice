json.extract! comment, :id, :user_comment, :event_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
