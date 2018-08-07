class AddSizeToPhoto < ActiveRecord::Migration[5.2]
  def change
  	add_column :photos, :size, :string
  end
end
