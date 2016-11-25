class Registration < ApplicationRecord
  def check_id
    found = false
    s = SimpleSpreadsheet::Workbook.read(rally.student_ids.path)
    binding.pry
    s.selected_sheet = s.sheets.first
    s.first_row.upto(s.last_row) do |line|
      known_id = s.cell(line, 1)[-6..-1]
      if known_id == student_id
        found = true
        break
      end
    end
    errors.add(:student_id, I18n.t("errors.student_id_not_on_list")) unless found
  end

  validates :name, :surname, :student_id, :rally, :shirt_size, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  validates :student_id, presence: true, uniqueness: { scope: :rally, message: I18n.t("errors.student_id_not_unique") }, numericality: { only_integer: true }
  validate :check_id
  belongs_to :rally
end
