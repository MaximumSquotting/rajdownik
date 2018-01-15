# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Registration, type: :model do
  let!(:rally) { FactoryGirl.create(:rally) }
  subject(:registration) { FactoryGirl.build_stubbed(:registration, rally: rally) }
  %i(name surname student_id phone_number).each do |attribute|
    it { is_expected.to validate_presence_of(attribute) }
  end
end
