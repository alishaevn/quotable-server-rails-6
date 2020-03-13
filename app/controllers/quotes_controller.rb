class QuotesController < ApplicationController
  def index
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.save

    redirect_to @quote
  end

  private def quote_params
    params.require(:quote).permit(:author, :body, :date)
  end

end
