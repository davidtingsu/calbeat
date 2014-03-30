json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :abbrev, :website, :school_id, :facebook_id, :facebook_url, :contact_person, :contact_phone, :contact_email, :introduction, :size, :SGID, :callink_permalink, :requirements, :meeting, :address, :activity_summary, :permalink, :related_clubs
  json.url club_url(club, format: :json)
end
