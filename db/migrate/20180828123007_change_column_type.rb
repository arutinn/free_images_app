# frozen_string_literal: true

class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :favorite_photos
    add_column :users, :favorite_photos, :string
  end
end
