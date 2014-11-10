class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :url
      t.string :photo
      t.text :blurb

      t.timestamps
    end
  end
end
