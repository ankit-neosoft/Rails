class AddNeedEstatementToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :need_estatement, :string
  end
end
