# Family model
class Company < ActiveRecord::Base
  self.per_page = 10
  has_one :contact
  has_many :rankings
end
