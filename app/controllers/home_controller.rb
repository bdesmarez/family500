# Home controller
class HomeController < ApplicationController
  def index
    # console
    @q = Company.ransack(params[:q])
    @q.sorts = 'name asc' if @q.sorts.empty?
    @companies = @q.result.paginate(page: params[:page])
  end
end
