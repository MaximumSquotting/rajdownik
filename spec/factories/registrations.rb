# frozen_string_literal: true

FactoryGirl.define do
  factory :registration do
    name "Michał Zając"
    student_id "203229"
    shirt_size "M"
    female_shirt false
    accepted false
    paid false
    attended false
    accepted_terms false
    signed_declaration false
    additional_notes "Totalny oszołom"
    phone_number 530_939_555
    association :rally
  end
end
