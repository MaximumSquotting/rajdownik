class Registration < ApplicationRecord
  validates :name, :student_id, :shirt_size,
   :departure_date, :arrival_date, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  validates :student_id, uniqueness: { scope: :rally, message: I18n.t("errors.student_id_not_unique") }
  belongs_to :rally
end
