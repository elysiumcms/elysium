class Elysium::Site < ActiveRecord::Base
  belongs_to :template
  has_many :templates, dependent: :destroy

  validates :title, :domain, :meta_keyword, :meta_description, :meta_author, length: { maximum: 255 }
  validates :title, presence: true
  validates :domain, presence: true, unique: true
end
