class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :dname

      t.timestamps null: false
    end
  end
end
