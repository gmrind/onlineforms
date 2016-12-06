class Bankslip < ActiveRecord::Base
    belongs_to  :bank
    belongs_to  :department
    belongs_to  :purpose
    has_many    :departments
    
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      [:aname, :cnic]  
    ]
  end
    validates_presence_of   :aname, :fname, :cnic, :exad_name, :department_id, :purpose_id, :ddate, :bank_id, :amount
    
  def self.search(search)
    if search
      where('cnic LIKE ?', "%#{search}%")
    else
      Bankslip.all
    end
  end
    
end
