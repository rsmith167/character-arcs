class Character < ActiveRecord::Base #child

    belongs_to :show
    has_and_belongs_to_many :season



end
