class Admin::CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.create(title: company_params[:title])

    if company.save
      flash[:notice] = "Company '#{company.title}' Successfully Created"
      redirect_to company_path(company)
    else
      flash.now.alert = "Please try again"
      render :new
    end
  end

  def destroy
  end

  private
  def company_params
    params.require(:company).permit(:title)
  end
end
