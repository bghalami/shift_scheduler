require "rails_helper"

describe Company, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
  end
end
