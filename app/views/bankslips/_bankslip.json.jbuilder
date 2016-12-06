json.extract! bankslip, :id, :exad_name, :ddate, :amount, :aname, :fname, :cnic, :bank_id, :department_id, :purpose_id, :created_at, :updated_at
json.url bankslip_url(bankslip, format: :json)