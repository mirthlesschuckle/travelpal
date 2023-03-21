class AddAreaToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :area, :string
  end
end
