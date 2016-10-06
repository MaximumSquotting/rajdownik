class CreateRallies < ActiveRecord::Migration[5.0]
  def change
    create_table :rallies do |t|
      
      t.string  :name
      t.integer :attendees_limit
      t.string  :start_date 
      t.string  :end_date

      t.timestamps
    end
  end
end
