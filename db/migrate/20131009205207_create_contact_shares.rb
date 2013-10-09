class CreateContactShares < ActiveRecord::Migration
  def change
    create_table :contact_shares do |t|
      t.references :contact
      t.references :user

      t.timestamps
    end

    add_index(:contact_shares, :contact)
    add_index(:contact_shares, :user)
    add_index(:contact_shares, [:contact, :user], { unique: true })
  end
end
