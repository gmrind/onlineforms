class CreatePurposes < ActiveRecord::Migration
  def change
    create_table :purposes do |t|
      t.string :pname
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
