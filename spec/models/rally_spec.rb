require 'rails_helper'

RSpec.describe Rally, type: :model do
  [ :name, :attendees_limit, :start_date, :end_date].each do |a|
      it { is_expected.to validate_presence_of(a) }
  end
end
