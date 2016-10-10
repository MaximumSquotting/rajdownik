class Registration < ApplicationRecord
  validates :name, :shirt_size, :departure_date, :arrival_date, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  validates :student_id, presence: true, uniqueness: { scope: :rally, message: I18n.t("errors.student_id_not_unique") }, numericality: { only_integer: true }
  belongs_to :rally
end
