json.extract! feedback, :id, :Userid, :Feedback, :Reply, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
