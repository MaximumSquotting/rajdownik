class Rally < ApplicationRecord

    mount_uploader :students_ids, IndexesUploader
    #attr_accessible :file, :file_cache, :remove_file

    validates :name, :attendees_limit, :start_date, :end_date,  presence: true
    has_many :registrations
end
