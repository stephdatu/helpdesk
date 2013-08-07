class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash[:notice] = "Ticket has been submitted."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been submitted."
      render action: "new"
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  private
    def ticket_params
      params.require(:ticket).permit(:name, :subject, :message)
    end
end
