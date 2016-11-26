class ConfirmController < ApplicationController
  def confirm
    @registration = Registration.where(params[:student_id])
    @registration.last.accepted == 'true'
    @registration.last.accepted_terms == 'true'
    @registration.last.save
  end
end
