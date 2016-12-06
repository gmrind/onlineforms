class AddSlugToBankslips < ActiveRecord::Migration
  def change
    add_column :bankslips, :slug, :string
    add_index :bankslips, :slug
  end
end
