class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name, null: false
      t.string :student_id, null: false
      t.boolean :accepted, null: false, default: false
      t.boolean :paid, null: false, default: false
      t.boolean :attended, null: false, default: false
      t.string :shirt_size, null: false
      t.boolean :female_shirt, null: false, default: false
      t.string :phone_number, null: false
      t.string :departure_date, null: false, default: "NotKnowYet"
      t.string :arrival_date, null: false, default: "NotKnowYet"

      t.timestamps
    end
  end
end
