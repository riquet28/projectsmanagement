class ScenariosController < ApplicationController

  before_action :set_scenario, only: [:edit, :update, :destroy]

  def index
    @ticket = Ticket.find(params[:ticket_id])
    @scenarios = @ticket.scenarios
  end

  def new
    @scenario = Scenario.new(ticket_id: params[:ticket_id])
    @scenario.results.build#(scenario_id: @scenario.id)
  end

  def create
    @scenario = Scenario.create(scenario_params)
    #byebug
    respond_to do |format|
      if @scenario.save
        format.html {redirect_to scenarios_path(ticket_id: @scenario.ticket_id), notice: "Scénario créé"}
        format.js
      else
        format.html {render :new}
      end
    end
  end

  def edit
      #@scenario.results.build
  end

  def update
    respond_to do |format|
      if @scenario.update(scenario_params)
        format.html {redirect_to scenarios_path(ticket_id: @scenario.ticket_id), notice: "Scénario mis à jour"}
        #format.js
      else
        format.html {render :new}
      end
    end
  end

  def destroy
    @scenario.destroy
    respond_to do |format|
      format.html {redirect_to scenarios_path(ticket_id: params[:ticket_id]), notice: "Scénario supprimé"}
      format.js
    end
  end

  private

    def set_scenario
      @scenario = Scenario.find(params[:id])
    end

    def scenario_params
      params.require(:scenario).permit(:description, :ticket_id, results_attributes: [:id, :description, :dev, :staging, :scenario_id, :_destroy])
    end

end
