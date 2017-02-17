class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :region
    end
    create_table :adventures do |t|
      t.string :name
      t.integer :days
      t.string :description
      t.integer :place_id
      t.integer :user_id
    end
  end
end
