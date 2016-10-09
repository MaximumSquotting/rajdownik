class PublicRegistrationsController < ApplicationController

  def new
    @public_registration = Registration.new
  end

  def index
    @public_registration = Registration.all
  end

  def create
    @public_registration = Registration.new(public_registration_params)
    if @public_registration.save
      redirect_to register_path, notice: t(:successful_registeration)
    else
      render 'new'
    end
  end


  private
  def public_registration_params
    params.require(:registration).permit(:name, :student_id, :shirt_size,
     :phone_number)
  end

end
