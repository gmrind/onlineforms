class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :sname
      t.string :fname
      t.date :d_of_b
      t.string :name_of_year_examination
      t.string :previous_registration_no
      t.string :board_university
      t.string :local_domicile
      t.string :religion
      t.string :cnic_no
      t.text :permanent_address
      t.text :present_address
      t.string :challan_no
      t.integer :amount
      t.date :registration_date

      t.timestamps null: false
    end
  end
end
