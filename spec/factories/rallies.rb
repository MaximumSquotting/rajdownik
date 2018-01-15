# frozen_string_literal: true

FactoryGirl.define do
  factory :rally do
    name "Testowe wydarzenie"
    attendees_limit 150
    start_date { Time.zone.now + 1.day }
    end_date { Time.zone.now + 3.days }
    student_ids { Rack::Test::UploadedFile.new(File.open(Rails.root.join("spec", "support", "sample.xls"))) }
  end
end
