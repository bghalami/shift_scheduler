class Company < ApplicationRecord
  validates_presence_of :title

  has_many :users

  def admin?
    true
  end
end
