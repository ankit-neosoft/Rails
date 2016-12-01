class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index: true
      t.string :order_no
      t.datetime :order_date

      t.timestamps null: false
    end
  end
end
