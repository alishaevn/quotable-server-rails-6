class QuotesController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    private def quote_params
        params.require(:quote).permit(:author, :body, :date)
    end

end
