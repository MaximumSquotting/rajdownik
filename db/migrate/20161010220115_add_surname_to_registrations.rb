class AddSurnameToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :surname, :string
  end
end
