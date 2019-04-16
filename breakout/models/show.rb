class Show < ActiveRecord::Base
  has_many :actors, dependent: :nullify
  belongs_to :network

  validates :name, :network, presence: true
end