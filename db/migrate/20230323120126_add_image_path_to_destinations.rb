class AddImagePathToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :image_path, :string
  end
end
