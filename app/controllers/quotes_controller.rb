class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      render :json => { message: "saved" }
    else
      render :json => { message: "not saved" }
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:quote, :author)
  end
end
