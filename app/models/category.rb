# == Schema Information
#
# Table name: categories
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
#  index_categories_on_deleted_at  (deleted_at)
#  index_categories_on_name        (name) UNIQUE
#  index_categories_on_slug        (slug) UNIQUE
#

class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_paranoid
  has_and_belongs_to_many :clubs

  def to_s
    name
  end
end
