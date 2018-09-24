# frozen_string_literal: true

class AddQuantityToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :quantity, :integer
  end
end
