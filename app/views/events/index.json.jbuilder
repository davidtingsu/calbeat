json.array!(@events) do |event|
  json.extract! event, :name, :location, :facebook_id, :start_time, :end_time, :description, :club_id
  json.url event_url(event, format: :json)
end