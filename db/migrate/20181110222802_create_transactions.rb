class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.text :description
      t.decimal :value
      t.date :due_date
      t.references :category
      t.date :payday

      t.timestamps
    end
  end
end
