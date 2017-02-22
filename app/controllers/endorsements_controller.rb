class EndorsementsController < ApplicationController

  def index
    @endorsements = Endorsement.all
  end

  def show
    @endorsement = Endorsement.find(params[:id])

  end

  def new
    @endorsement = Endorsement.new
  end

  def create
    @endorsement = Endorsement.create(endorsement_params)
    if @endorsement.save
      redirect_to endorsements_path
    else
      render "new"
    end
  end

  private

  def endorsement_params
    params.require(:endorsement).permit(:headline, :name, :description, :category, :date_achieved)
  end

end
