class Book < ActiveRecord::Base
    has_many :authors, through: :publishings
end
