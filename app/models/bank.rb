class Bank < ActiveRecord::Base
  has_many    :bankslips
end
