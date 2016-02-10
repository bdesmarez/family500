# Model for rankings (chiffre d'affaires)
class Ranking < ActiveRecord::Base
  belongs_to :company

  scope :active, -> { order('year desc').first }
end
