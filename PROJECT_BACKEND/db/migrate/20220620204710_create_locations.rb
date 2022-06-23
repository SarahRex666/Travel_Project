class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.belongs_to :tour 
      t.belongs_to :guide
      t.string :name
      t.string :description
    end
  end
end
