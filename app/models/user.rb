class User < ActiveRecord::Base #parent
    #needs a password
    has_many :characters



end