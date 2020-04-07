class CreateFulltimejobs < ActiveRecord::Migration[5.2]
  def change
    create_table :fulltimejobs do |t|
    	t.string :title
    	t.string :location
    	t.string :details
      t.timestamps
    end
  end
end
