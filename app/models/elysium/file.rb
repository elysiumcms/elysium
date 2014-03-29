class Elysium::File < ActiveRecord::Base
  belongs_to :template

  validates :template, presence: true
end
