FactoryGirl.define do
  factory :topic do
    title "Topic"
    body "Lorem ipsum dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
    sequence(:view_count){ |n| n }
  end
end

