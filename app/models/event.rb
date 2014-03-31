# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  slug        :string(255)
#  location    :string(255)
#  facebook_id :integer
#  start_time  :datetime
#  end_time    :datetime
#  description :text
#  club_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  deleted_at  :datetime
#
# Indexes
#
#  index_events_on_club_id      (club_id)
#  index_events_on_deleted_at   (deleted_at)
#  index_events_on_facebook_id  (facebook_id) UNIQUE
#  index_events_on_name         (name) UNIQUE
#  index_events_on_slug         (slug) UNIQUE
#

class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_paranoid
  belongs_to :club
  # TODO: add belongs_to :department after creating model department

  validates :name, presence: true
end
