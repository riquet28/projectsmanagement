=begin
class ResultsController < ApplicationController

  before_action :set_result, only: [:show, :edit, :update, :destroy]

  def index
    @results = Result.all
  end

  def show
  end

  def new
    @result = Result.new(ticket_id: 50)
    #3.times do
      @result.results.build
    #end
  end

  def create
    @result = Result.create(action_params)
    if @result.save
      redirect_to @result, notice: "Attendu créé"
    else
      render :new
    end
  end

  def edit
    #3.times do
      @result.results.build
    #end
  end

  def update
    if @result.update(action_params)
      redirect_to @result, notice: "Attendu mise à jour"
    else
      render :edit
    end
  end

  def destroy
    @result.destroy
    redirect_to results_path, notice: "Attendu supprimée"
  end

  private

    def set_result
      @result = Result.find(params[:id])
    end

    def action_params
      params.require(:result).permit(:description, :scenario_id, :dev, :staging)
    end

end
=end
