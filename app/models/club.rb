# == Schema Information
#
# Table name: clubs
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  slug              :string(255)
#  abbrev            :string(255)
#  school_id         :integer          not null
#  introduction      :text
#  website           :string(255)
#  size              :integer
#  requirements      :text
#  meeting           :text
#  address           :text
#  activity_summary  :text
#  contact_person    :string(255)
#  contact_phone     :string(255)
#  contact_email     :string(255)
#  facebook_id       :integer
#  facebook_url      :string(255)
#  SGID              :integer
#  callink_permalink :string(255)
#  related_club_ids  :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  deleted_at        :datetime
#
# Indexes
#
#  index_clubs_on_deleted_at   (deleted_at)
#  index_clubs_on_facebook_id  (facebook_id) UNIQUE
#  index_clubs_on_name         (name) UNIQUE
#  index_clubs_on_school_id    (school_id)
#  index_clubs_on_slug         (slug) UNIQUE
#

class Club < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_paranoid
  belongs_to :school
  has_and_belongs_to_many :categories
  has_many :events

  validates :name, presence: true
  validates :school_id, presence: true

  def related_clubs
    if related_club_ids
      related_club_ids.split().map { |club_id| Club.find(club_id).name }
    end
  end

  def to_s
    name
  end
end
