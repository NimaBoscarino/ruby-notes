class Network < ActiveRecord::Base
  has_many :shows, dependent: :destroy

  before_validation :capitalize_name

  # Netflix -> NETFLIX
  private
    def capitalize_name
      self.name = self.name.upcase
    end
end