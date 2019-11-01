class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event
      t.string :title
      t.string :date
      t.integer :event_id

      t.timestamps
    end
    add_index :events, :event_id
  end
end
