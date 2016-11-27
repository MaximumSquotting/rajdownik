class ConfirmController < ApplicationController
  def confirm()

    @registration = Registration.where(student_id: params["student_id"])
    if @registration.size != 0
      @registration.last.update :accepted => true, :accepted_terms => true,
        :signed_declaration => true
      render 'index'
    end

  end
end
