class AddCountryToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :country, :string
  end
end
