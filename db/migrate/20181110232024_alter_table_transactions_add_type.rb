class AlterTableTransactionsAddType < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :transaction_type, :integer
  end
end
