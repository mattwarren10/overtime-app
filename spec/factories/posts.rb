FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 3.2
    user
  end

  factory :second_post, class: "Post" do
    date Date.today
    rationale "Some more content"
    overtime_request 0.5
    user
  end

end
