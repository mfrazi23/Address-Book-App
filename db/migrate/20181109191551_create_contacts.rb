class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.text :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
