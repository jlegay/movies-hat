class ChangeColumnPublicToHats < ActiveRecord::Migration[6.0]
  def change
    remove_column :hats, :public, :boolean
    add_column :hats, :public, :boolean, default: false
  end
end
