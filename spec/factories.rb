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


factory :booking do 
customer_name "Zuhair"
phone "66177975"
email "zuhair.ghalib@gmail.com"
number_of_seats 5
end

factory :movie do
cast "Brad Pitt, Edward Norton, Jared Leto"
duration "139 mins"
genre "Thriller"
rating "R"
title "Fight Club"
end

end 