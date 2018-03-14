class SearchesController < ApplicationController

  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
  end

  def create
    Search.find_each(&:destroy)
    @search = Search.create(search_params)
    redirect_to @search
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def search_params
    params.require(:search).permit(:name, :headquarter, :size, :industry, :min_revenue, :max_revenue, :synopsis)
  end

end
