class Show < ActiveRecord::Base
    has_many :characters
   #has_many :seasons, through: :characters
end