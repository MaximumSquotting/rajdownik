class AddRallyRefToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_reference :registrations, :rally, foreign_key: true
  end
end
