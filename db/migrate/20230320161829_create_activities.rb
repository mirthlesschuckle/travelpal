class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :type
      t.string :description
      t.date :date
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
