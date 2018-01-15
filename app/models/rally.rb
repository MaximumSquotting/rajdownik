class Rally < ApplicationRecord
  mount_uploader :student_ids, IndexesUploader

  validates :name, :attendees_limit, :start_date, :end_date, :student_ids,:student_ids, presence: true
  has_many :registrations
end
