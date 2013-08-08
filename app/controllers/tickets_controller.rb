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
      HelpdeskMailer.ticket_copy(@ticket).deliver
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

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      flash[:notice] = "Ticket has been updated."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    flash[:notice] = "Ticket has been destroyed."

    redirect_to tickets_path
  end

  private
    def ticket_params
      params.require(:ticket).permit(:name, :subject, :message, :reply)
    end
end
