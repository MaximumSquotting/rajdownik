class Rally < ApplicationRecord
    validates :name, :attendees_limit, :start_date, :end_date, presence: true
    has_many :registrations
end
