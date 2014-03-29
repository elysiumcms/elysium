class Elysium::Template < ActiveRecord::Base
  belongs_to :site
  has_many :partials, dependent: :destroy
  has_many :layouts, dependent: :destroy
  has_many :pages, dependent: :destroy
  has_many :files, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :description, :javascript, :stylesheet, length: { maximum: 65535 }
  validates :site, presence: true
end
