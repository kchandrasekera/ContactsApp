class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  belongs_to :contact
  belongs_to :user
end
