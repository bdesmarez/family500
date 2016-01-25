# Home controller
class HomeController < ApplicationController
  def index
    # console
    @q = Family.ransack(params[:q])
    @q.sorts = 'name asc' if @q.sorts.empty?
    @families = @q.result.paginate(page: params[:page])
  end
end
