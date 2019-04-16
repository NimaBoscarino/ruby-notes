class Artist < ActiveRecord::Base
  has_many :songs

  def tagline
    'You know who it is!'
  end

end
