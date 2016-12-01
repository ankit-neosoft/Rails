class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :contactable, polymorphic: true, index: true
      t.string :address
      t.string :mobile_no

      t.timestamps null: false
    end
  end
end
