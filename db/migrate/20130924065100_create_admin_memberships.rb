class CreateAdminMemberships < ActiveRecord::Migration
  def change
    create_table :admin_memberships do |t|
      t.belongs_to :club, index: true
      t.belongs_to :hub, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
