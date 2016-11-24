class AddNameToPost < ActiveRecord::Migration
  def change
    add_column :posts, :name, :string
    add_column :posts, :type, :string
    add_column :posts, :description, :string
  end
end
