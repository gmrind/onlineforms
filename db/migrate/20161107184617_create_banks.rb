class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :bname
      t.string :bacno

      t.timestamps null: false
    end
  end
end
