require 'rails_helper'
describe User, type: :model do
  it 'exists' do
    expect(User).to be
  end
  describe 'validations' do
    company = Company.create(title: "Oy")
    user = company.users.create(name: 'james boblames',
                                    username: 'philbo',
                                    password_digest: 'oh_hello',
                                    pay_rate: 22.22,
                                    hours_requested: 22
                                    )
    subject { user }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:username) }
    #   need to fix validation test
    #   it { should validate_uniqueness_of(:username).ignoring_case_sensitivity.scoped_to(:company) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:pay_rate) }
    it { should validate_presence_of(:hours_requested) }
  end

  describe 'roles' do
    it 'can be created as a employee(default) user' do
      company = Company.create(title: "A Store")
      user = company.users.create(name: 'james boblames',
                                  username: 'philbo',
                                  password_digest: 'oh_hello',
                                  pay_rate: 22.22,
                                  hours_requested: 22
                                 )

      expect(user.role).to eq('employee')
    end
  end
end
