class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.integer :phone
      t.text :address
      t.integer :pin

      t.timestamps
    end
  end
end
