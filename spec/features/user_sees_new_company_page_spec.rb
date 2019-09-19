require "rails_helper"
require "pry"
describe "user sees new company page" do
  describe "admin user visits /admin/companies/new and creates new company" do
    it "displays new company form and allows creation of company" do
      visit "/admin/companies/new"

      fill_in :company_title, with: "McDonalds"
      click_on "Create Company"

      company = Company.last

      expect(current_path).to eq(company_path(company))
      expect(page).to have_content(company.title)
    end
  end
  describe "non-admin user visits /admin/companies/new" do
    it "displays 404" do
      # visit "/admin/companies"
      # binding.pry
    end
  end
end
