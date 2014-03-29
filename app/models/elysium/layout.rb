class Elysium::Layout < ActiveRecord::Base
  belongs_to :template
  has_many :pages, dependent: :nullify

  validates :name, presence: true, langth: { maximum: 255 }
  validates :content, :javascript, :stylesheet, length: { maximum: 65535 }
  validates :content, presence: true
  validates :template, presence: true
end
