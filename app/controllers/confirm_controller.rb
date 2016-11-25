class ConfirmController < ApplicationController
  def confirm
    binding.pry
    @registration = Registration.find(:student_id)
    #@registration.accepted = true
    #@registration.accepted_terms = true
  end
end
