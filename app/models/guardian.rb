# frozen_string_literal: true

class Guardian < ApplicationRecord
  validates :name, :affilation, :phone_number, :email, presence: true
end
