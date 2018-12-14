json.extract! transaction, :id, :description, :value, :due_date, :category, :payday, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
