class ChangeFieldTypes < ActiveRecord::Migration[5.2]
  def change
  	change_column :events, :start_date, 'date USING CAST(start_date AS date)'
  end
end
