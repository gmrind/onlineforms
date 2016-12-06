class CreateBankslips < ActiveRecord::Migration
  def change
    create_table :bankslips do |t|
      t.string :exad_name
      t.date :ddate
      t.integer :amount
      t.string :aname
      t.string :fname
      t.string :cnic
      t.integer :bank_id
      t.integer :department_id
      t.integer :purpose_id

      t.timestamps null: false
    end
  end
end
