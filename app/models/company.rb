# Family model
class Company < ActiveRecord::Base
  self.per_page = 15

  has_many :rankings
  has_many :contacts

  accepts_nested_attributes_for :rankings
  accepts_nested_attributes_for :contacts

  # callbacks
  before_save :generate_token

  private

  def generate_token
    self.token = Digest::MD5.hexdigest "#{SecureRandom.hex(10)}-#{DateTime.now.to_s}" unless self.token?
  end
end
