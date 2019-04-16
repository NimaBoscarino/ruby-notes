class Author < ActiveRecord::Base
    has_many :books, through: :publishings

end
