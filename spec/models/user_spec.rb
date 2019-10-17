require 'rails_helper'
describe User, type: :model do
  it 'exists' do
    expect(User).to be
  end
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:password_digest)}
    it {should validate_presence_of(:pay_rate)}
    it {should validate_presence_of(:hours_requested)}
    it {should validate_presence_of(:company_id)}
  end

  describe 'roles' do
    it 'can be created as a employee(default) user' do
      company = Company.create(title: "A Store")
      user = company.users.create(name: 'james boblames',
                                  username: 'philbo',
                                  password: 'oh_hello',
                                  pay_rate: 22.22,
                                  hours_requested: 22
                                 )

      expect(user.role).to eq('employee')
    end
  end
end
