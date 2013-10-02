class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.belongs_to :user, index: true
      t.belongs_to :club, index: true

      t.datetime :joined
      t.datetime :ended

      t.boolean	 :admin

      t.timestamps
    end
  end
end
