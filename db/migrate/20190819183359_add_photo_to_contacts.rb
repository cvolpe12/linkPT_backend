class AddPhotoToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :photo, :string
  end
end
