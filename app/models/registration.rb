class Registration < ActiveRecord::Base
    has_and_belongs_to_many :subjects
    has_many                :examinations
    accepts_nested_attributes_for :examinations
    
    
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      [:sname, :cnic_no]
    ]
  end
    validates :cnic_no, :format => {with: /\d{5}-\d{7}-\d{1}/, message: "can't blank or worng format. Use this format (xxxxx-xxxxxxx-x)"}
    validates_presence_of :sname, :fname, :name_of_year_examination, :d_of_b, :previous_registration_no, :board_university,
                          :local_domicile, :religion, :registration_date, :permanent_address, :present_address, 
                          :challan_no, :amount, subject_ids:[], examinations_attributes: [ :id, :ename, :year, :annual_supply, 
                          :roll_no, :division, :subject_pass, :board_uni]

  def self.search(search)
    if search
      where('cnic_no LIKE ?', "%#{search}%")
    else
      Registration.all
    end
  end

end
