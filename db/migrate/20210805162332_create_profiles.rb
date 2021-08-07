class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :city
      t.integer :mobile

      t.timestamps
    end
  end
end
