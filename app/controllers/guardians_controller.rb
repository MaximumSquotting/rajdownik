# frozen_string_literal: true

class GuardiansController < ApplicationController
  def new
    @guardian = Guardian.new
  end

  def index
    @guardian = Guardian.all
  end

  def create
    @guardian = Guardian.new(guardian_params)

    if @guardian.save
      redirect_to @guardian
    else
      render 'new'
    end
  end

  def show
    @guardian = Guardian.find(params[:id])
  end

  def edit
    @guardian = Guardian.find(params[:id])
  end

  def update
    @guardian = Guardian.find(params[:id])

    if @guardian.update(guardian_params)
      redirect_to @guardian
    else
      render 'edit'
    end
  end

  def destroy
    @guardian = Guardian.find(params[:id])
    @guardian.destroy

    redirect_to guardians_path
  end

  private

  def guardian_params
    params.require(:guardian).permit(:name, :affilation, :phone_number, :email)
  end
end
