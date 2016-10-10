class Registration < ApplicationRecord
  validates :name, :student_id, :shirt_size,
   :phone_number, :departure_date, :arrival_date, presence: true
  validates :student_id, uniqueness: { scope: :rally, message: I18n.t("errors.student_id_not_unique") }
  belongs_to :rally
end
