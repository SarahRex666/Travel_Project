class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.integer :days
      t.integer :price
      t.string :photo_url
      t.string :tags
    end
  end
end
