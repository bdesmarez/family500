# Contact model, linked to company
class Contact < ActiveRecord::Base
  belongs_to :company
end
