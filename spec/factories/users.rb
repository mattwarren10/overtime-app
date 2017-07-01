FactoryGirl.define do
  sequence :email do |n|
  	"test#{n}@example.com"
  end
  factory :user do
    first_name 'Larry'
    last_name 'Bird'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '8888888888'
    ssn 1234
    company "Acme"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '8888888888'
    ssn 1234
    company "Acme"
  end

  factory :other_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '8888888888'
    ssn 1234
    company "Acme"
  end

  factory :employee, class: "Employee" do
    first_name 'George'
    last_name 'Employee'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '8888888888'
    ssn 1234
    company "Acme"
  end

end
