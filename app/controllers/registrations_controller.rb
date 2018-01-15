# frozen_string_literal: true

class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def index
    @registration = Registration.all
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      redirect_to @registration
    else
      render 'new'
    end
  end

  def show
    @registration = Registration.find(params[:id])
  end

  def edit
    @registration = Registration.find(params[:id])
  end

  def update
    @registration = Registration.find(params[:id])

    if @registration.update(registration_params)
      redirect_to @registration
    else
      render 'edit'
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    redirect_to registrations_path
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :student_id, :shirt_size,
                                         :accepted, :paid, :attended, :female_shirt, :phone_number,
                                         :departure_date, :arrival_date, :signed_declaration, :additional_notes, :accepted_terms)
  end
end
