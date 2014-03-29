class Elysium::Partial < ActiveRecord::Base
  belongs_to :template

  validates :name, presence: true, length: { maximum: 255 }
  validates :content, length: { maximum: 65535 }
  validates :template, presence: true
end
