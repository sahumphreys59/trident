class AlterEnddateField < ActiveRecord::Migration[5.2]
  def change
  	change_column :events, :end_date, 'date USING CAST(end_date AS date)'
  end
end
