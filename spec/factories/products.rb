FactoryBot.define do
  factory :product do
    name { "MyString" }
    vendor { nil }
    list_price { "9.99" }
    sell_price { "9.99" }
    is_selling { false }
    code { "MyString" }
    deleted_at { "2021-12-23 08:09:09" }
  end
end
