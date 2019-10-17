class User < ApplicationRecord
  validates_presence_of :name, :pay_rate, :hours_requested, :role, :company_id, :password_digest
  validates_presence_of :username, uniqueness: { scope: :company }

  has_secure_password

  belongs_to :company

  enum role: { employee: 0, manager: 1, admin: 2 }
end
