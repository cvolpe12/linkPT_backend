class ChangePhoneToBeStringInContacts < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :phone, :string
  end
end
