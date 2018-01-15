# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Guardian, type: :model do
  %i[name affilation phone_number email].each do |a|
    it { is_expected.to validate_presence_of(a) }
  end
end
