class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :attending_states do |t|
    	t.string :name
    end

    create_table :event_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      t.belongs_to :attending_state, index: true
      t.timestamps
    end
  end
end
