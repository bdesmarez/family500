# Family model
class Company < ActiveRecord::Base
  self.per_page = 15

  has_many :rankings
  has_many :contacts

  accepts_nested_attributes_for :rankings
  accepts_nested_attributes_for :contacts
end
