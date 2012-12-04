FactoryGirl.define do

factory :user do
email "sarahmustafa93@gmail.com"
password "mmngmhs"
password_confirmation "mmngmhs"
end

factory :showing do
showing_time  Time.now + 3.hour
number_of_available_seats 40
association :movie
end


end