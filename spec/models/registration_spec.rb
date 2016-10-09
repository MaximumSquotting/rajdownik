require 'rails_helper'

RSpec.describe Registration, type: :model do

    [ :name, :student_id,
     :shirt_size, :phone_number, :departure_date, :arrival_date].each do |a|
        it { is_expected.to validate_presence_of(a) }
    end

end
