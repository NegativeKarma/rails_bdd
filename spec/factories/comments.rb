FactoryBot.define do
  factory :comment do
    article nil
    reader "MyString"
    content "MyText"
  end
end
