class User < ApplicationRecord
  validates_presence_of :name, :pay_rate, :hours, :role
  validates_presence_of :username, uniqueness: true

  has_secure_password

  belongs_to :company

  enum role: { employee: 0, manager: 1, admin: 2 }
end
