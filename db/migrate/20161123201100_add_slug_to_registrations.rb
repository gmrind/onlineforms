class AddSlugToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :slug, :string
    add_index :registrations, :slug
  end
end
