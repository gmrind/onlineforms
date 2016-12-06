class Department < ActiveRecord::Base
    has_many    :purposes
    has_many    :bankslips
end
