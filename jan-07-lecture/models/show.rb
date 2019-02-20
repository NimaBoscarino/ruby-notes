class Show < ActiveRecord::Base
  has_many :actors, dependent: :destroy
  belongs_to :network

  validates :name, presence: true
  validates :network, presence: true

  # THIS NEEDS TO HAVE A NETWORK
end