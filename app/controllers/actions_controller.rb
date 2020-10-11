class ActionsController < ApplicationController

  #before_action :set_action, only: [:show, :edit, :update, :destroy, :move]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_action
      @action = Action.find(params[:id])
    end

    def action_params
      params.require(:action_params).permit(:description)
    end

end
