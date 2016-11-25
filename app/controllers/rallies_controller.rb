class RalliesController < ApplicationController

  def new
    @rally = Rally.new
  end

  def index
    @rally = Rally.all
  end

  def create
    @rally = Rally.new(rally_params)

    if @rally.save
      redirect_to @rally
    else
      render 'new'
    end
  end

  def show
    @rally = Rally.find(params[:id])
  end

  def edit
    @rally = Rally.find(params[:id])
  end

  def update
    @rally = Rally.find(params[:id])

    if @rally.update(rally_params)
      redirect_to @rally
    else
      render 'edit'
    end
  end

  def destroy
    @rally = Rally.find(params[:id])
    @rally.destroy

    redirect_to rallies_path
  end

  private
  def rally_params
    params.require(:rally).permit(:name, :attendees_limit, :start_date,
    :end_date, :student_ids)
  end

end
