# Home controller
class HomeController < ApplicationController
  def index
    @q = Company.ransack(params[:q])
    @q.sorts = 'rankings_turnover desc' if @q.sorts.empty?
    @companies = @q.result.includes(:rankings).paginate(page: params[:page])
  end
end
