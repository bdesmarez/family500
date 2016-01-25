# Company controller
class CompaniesController < ApplicationController
  def show
    @company = Company.find params[:id]

    render 'show', content_type: 'text/html', layout: false
  end
end
