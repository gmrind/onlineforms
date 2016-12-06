class Purpose < ActiveRecord::Base
    belongs_to  :department
    has_many    :bankslips
end
