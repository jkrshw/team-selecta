class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :club, index: true

      t.datetime :joined
      t.datetime :ended

      t.timestamps
    end
  end
end
