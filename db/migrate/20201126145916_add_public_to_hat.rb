class AddPublicToHat < ActiveRecord::Migration[6.0]
  def change
    add_column :hats, :public, :boolean
  end
end
