class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :bio
      t.string :photo_url
    end
  end
end
