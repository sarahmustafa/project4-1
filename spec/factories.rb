FactoryGirl.define do 
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