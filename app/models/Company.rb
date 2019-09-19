class Company < ApplicationRecord
  validates_presence_of :title

  def admin?
    true
  end
end
