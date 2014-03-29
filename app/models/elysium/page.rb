class Elysium::Page < ActiveRecord::Base
  belongs_to :template
  belongs_to :layout

  validates :name, presence: true
  validates :name, :path, length: { maximum: 255 }
  validates :content, presence: true
  validates :content, :javascript, :stylesheet, length: { maximum: 255 }
  validates :template, presence: true
end
