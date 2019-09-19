class Admin::CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    render :template => 'companies/show'
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
    company = Company.find(params[:id])
    company.delete
    flash[:notice] = "Successfully deleted '#{company.title}'"
    redirect_to admin_companies_path
  end

  private
  def company_params
    params.require(:company).permit(:title)
  end
end
