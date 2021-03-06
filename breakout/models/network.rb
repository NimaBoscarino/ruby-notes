class Network < ActiveRecord::Base
  has_many :shows, dependent: :destroy
  has_many :actors, through: :shows

  before_validation :capitalize_name

  # WHEN YOU CREATE A NETWORK, CAPITALIZE THE NAME. 
  private
    def capitalize_name
      self.name = self.name.upcase
    end  
end