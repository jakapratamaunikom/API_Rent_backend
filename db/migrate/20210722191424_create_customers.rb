class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name, default: 60
      t.string :address
      t.string :age
      t.string :phone
      t.string :gender
      t.timestamps
    end
  end
end
