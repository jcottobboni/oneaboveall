FactoryBot.define do
  factory :transaction do
    description { "MyText" }
    value { "9.99" }
    due_date { "2018-11-10" }
    category { "" }
    payday { "2018-11-10" }
  end
end
