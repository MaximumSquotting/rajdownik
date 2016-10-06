class Guardian < ApplicationRecord
  validates :name, :affilation, :phone_number, :email, presence: true
end
