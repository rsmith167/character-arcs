class Season < ActiveRecord::Base #parent

    has_many :character
    has_many :show, through :character



end