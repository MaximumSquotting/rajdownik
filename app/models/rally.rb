class Rally < ApplicationRecord

    mount_uploader :student_ids, IndexesUploader
    
    validates :name, :attendees_limit, :start_date, :end_date, presence: true
    has_many :registrations
end
