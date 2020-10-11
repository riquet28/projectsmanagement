class TicketsController < ApplicationController

  before_action :set_ticket, only: [:show, :edit, :update, :destroy, :move]

  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.create(test_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: "Successfully created a ticket" }
        format.js
      else
        format.html { render :new, notice: "Successfully created a test" }
        format.js
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @ticket.update(test_params)
        format.html { redirect_to @ticket, notice: "Successfully updated test" }
        format.json { render :show, status: :ok, location: @ticket}
      else
        format.html { render :new, notice: "Successfully created a test" }
        format.json { render json: @ticket.errors}
      end
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: "Successfully destroyed a test"
  end

  def move
    @ticket.insert_at(params[:position].to_i)
    head :ok
  end

  private

    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def test_params
      params.require(:ticket).permit(:tracker, :title, :issue_id, :reference,
                                     :url_link, :position, :description)
    end

end
