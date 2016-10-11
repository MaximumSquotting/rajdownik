class AddPreferredDepartureTimeToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :preferred_departure_time, :string
  end
end
