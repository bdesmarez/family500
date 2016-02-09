# Company controller
class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new company_params

    if @company.save!
      redirect_to root_path, flash: { success: 'Your company has been updated' }
    else
      redirect_to company_new, flash: { notice: 'An error occured' }
    end
  end

  def update
  end

  def show
    @company = Company.find params[:id]

    render 'show', content_type: 'text/html', layout: false
  end

  private

  def company_params
    params.require(:company).permit(
      :name, :description, :family_business, :alias, :webiste
    )
  end
end
