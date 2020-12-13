class Show < ActiveRecord::Base #parent

    has_many :characters
    has_many :seasons, through: :characters



end