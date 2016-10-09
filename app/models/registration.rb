class Registration < ApplicationRecord
  validates :name, :student_id, :shirt_size,
   :phone_number, :departure_date, :arrival_date, presence: true

end
