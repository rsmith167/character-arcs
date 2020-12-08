class Show < ActiveRecord::Base #parent

    has_many :character
    has_many :season, through :character



end