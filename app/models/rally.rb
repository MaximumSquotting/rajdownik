class Rally < ApplicationRecord

    mount_uploader :students_ids, IndexesUploader
    #attr_accessible :students_ids, :students_ids_cache, :remove_students_ids

    validates :name, :attendees_limit, :start_date, :end_date, presence: true
    has_many :registrations
end
