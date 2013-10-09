class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id

  validates :name, :email, :user_id, presence: true, uniqueness: true

  belongs_to :user
  has_many :contact_shares

  def self.contacts_for_user_id(user_id)
    Contact.joins("LEFT OUTER JOIN contact_shares ON contact_shares.contact_id = contacts.id")
           .where("contact_shares.user_id = ? OR contacts.user_id = ?", user_id, user_id)
  end

end
