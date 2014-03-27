# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  deleted_at :datetime
#
# Indexes
#
#  index_schools_on_deleted_at  (deleted_at)
#  index_schools_on_slug        (slug) UNIQUE
#

class School < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_paranoid
  has_many :club

  def to_s
    name
  end
end
