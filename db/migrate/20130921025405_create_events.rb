class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :club, index: true
      t.string :name
      t.text :description
      t.datetime :time
      t.string :location

      t.timestamps
    end
  end
end
