class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :company
      t.string :skills
      t.integer :mobile
      t.string :email
      t.text :address
      t.integer :pin
      t.string :state
      t.string :country
      t.text :bio

      t.timestamps
    end
  end
end
