FactoryGirl.define do 
  factory :category do
    name "Title test category"
    description "Descrip test category"
    association(:comment)
  end
  
end