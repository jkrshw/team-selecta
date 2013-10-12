class CreateGuests < ActiveRecord::Migration
  def change
    create_table :attending_states do |t|
    	t.string :name, null: false
    end

    add_index :attending_states, :name, :unique => true

    create_table :guests do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :event, index: true, null: false
      t.belongs_to :attending_state, index: true, null: false
      t.timestamps
    end
  end
end
