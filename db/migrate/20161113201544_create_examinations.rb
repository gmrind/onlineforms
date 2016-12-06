class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :ename
      t.string :year
      t.string :annual_supply
      t.string :roll_no
      t.string :division
      t.string :subject_pass
      t.string :board_uni
      t.integer :registration_id

      t.timestamps null: false
    end
  end
end
