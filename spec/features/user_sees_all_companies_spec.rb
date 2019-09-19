require "rails_helper"
require "pry"
describe "user sees all companies" do
  describe "admin user visits /admin/companies" do
    it "displays all companies" do
      company1 = Company.create!(title: "McDonalds")
      company2 = Company.create!(title: "Taco Bell")

      visit "/admin/companies"

      expect(page).to have_content(company1.title)
      expect(page).to have_content(company2.title)
    end
  end
  describe "non-admin user visits /admin/companies" do
    it "displays 404" do
      # visit "/admin/companies"
      # binding.pry
    end
  end
end
