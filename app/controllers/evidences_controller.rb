class EvidencesController < ApplicationController

  def index
    @evidences = Evidence.all
  end

  def new
    @evidence = Evidence.new
  end

  def create
    @evidence = Evidence.new(evidence_params)
    if @evidence.save
      redirect_to evidences_path, notice: "Evidence successfully added"
    else
      render "new"
    end
  end

  def show
    @evidence = Evidence.find(params[:id])
  end

  private

  def evidence_params
    params.require(:evidence).permit(:headline, :description, :category, :date_achieved)
  end
end
