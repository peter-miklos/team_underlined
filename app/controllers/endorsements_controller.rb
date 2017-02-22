class EndorsementsController < ApplicationController

  def index
    @endorsements = Endorsement.all
    p @endorsements
  end

  def new
    @endorsement = Endorsement.new
  end

  def create
    @endorsement = Endorsement.create(endorsement_params)
    p @endorsement
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
