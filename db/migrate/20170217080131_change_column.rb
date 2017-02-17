class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column(:places, :type, :category)
  end
end
