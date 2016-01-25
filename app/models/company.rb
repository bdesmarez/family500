# Family model
class Company < ActiveRecord::Base
  self.per_page = 15

  has_many :rankings
  has_one :contact
end
