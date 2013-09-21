class CreateClubsAndHubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :hubs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :affiliations do |t|
      t.belongs_to :hub
      t.belongs_to :club
    end
  end
end
