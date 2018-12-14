class AlterTableAddUserIdToCategoryAndTransaction < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :user_id, :integer
    add_column :transactions, :user_id, :integer
  end
end
