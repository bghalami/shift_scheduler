require "rails_helper"
require "pry"
describe "user deletes a company" do
  describe "admin user visits /admin/companies/:id and deletes it" do
    it "deletes a company" do
      company1 = Company.create!(title: "McDonalds")
      company2 = Company.create!(title: "Taco Bell")

      visit admin_company_path(company1)

      expect(Company.all.count).to eq(2)
      expect(page).to have_content(company1.title)
      click_on "Delete Company"
      expect(current_path).to eq(admin_companies_path)
      expect(page).to have_content("Successfully deleted 'McDonalds'")
      expect(page).to have_content(company2.title)
      expect(Company.all.count).to eq(1)
    end
  end
  describe "manager user visits /admin/companies/:id" do
    it "Shows normal show page" do
      # expect(page).to_not have_content("Delete Company")
    end
  end
  describe "non-admin and non-manager user visits /admin/companies/:id" do
    it "displays 404" do
      # visit "/admin/companies"
      # binding.pry
    end
  end
end
