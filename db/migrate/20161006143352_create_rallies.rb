class CreateRallies < ActiveRecord::Migration[5.0]
  def change
    create_table :rallies do |t|

      t.string  :name, null: false
      t.integer :attendees_limit, null: false
      t.string  :start_date, null: false
      t.string  :end_date, null: false

      t.timestamps
    end
  end
end
