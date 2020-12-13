class Season < ActiveRecord::Base #parent

   has_many :characters
   has_many :shows, through: :characters



end