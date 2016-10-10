class RemoveDepartureDateArrivalDateFromRegistration < ActiveRecord::Migration[5.0]
  def change
    remove_column :registrations, :departure_date, :string, null: false, default: "NotKnownYet"
    remove_column :registrations, :arrival_date, :string, null: false, default: "NotKnownYet"
  end
end
