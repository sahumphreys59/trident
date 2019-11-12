class CreateEvents < ActiveRecord::Migration[5.2]
  def change
create_table :events do |t|
    	t.string :title
    	t.string :start_date
    	t.string :end_date
    	t.string :location
    	t.text :details
    	t.integer :event_id
      t.timestamps
    end
    add_index :events, :event_id
  end
end
