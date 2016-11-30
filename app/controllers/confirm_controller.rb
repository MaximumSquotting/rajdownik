class ConfirmController < ApplicationController
  def confirm
    @registration = Registration.where(student_id: params["student_id"]).last
    if (@registration.rally.registrations.where(accepted: true).size < @registration.rally.attendees_limit)
      if @registration
        @registration.update :accepted => !@registration.accepted, :accepted_terms => !@registration.accepted_terms,
          :signed_declaration => !@registration.signed_declaration
      else
        render json: "registration not found", status: :not_found
      end
    else
      render json: "Attendes limit reached", status: :conflict
    end
  end
end
