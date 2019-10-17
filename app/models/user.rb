class User < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :username, uniqueness: true

  belongs_to :company

end
