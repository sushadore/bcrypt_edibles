FactoryGirl.define do
  factory :product  do
      name 'Delightful Turkish Delight'
      country_of_origin 'United Arab Emirates'
      cost '4.33'
  end

  factory :review do
    author 'thisgirl'
    content_body 'Moonfish, steelhead, lamprey southern flounder tadpole fish sculpin bigeye, blue-redstripe danio collared dogfish. Smalleye squaretail goldfish arowana butterflyfish pipefish wolf-herring jewel tetra.'
    rating '4'
  end

  factory :user do
    email 'somename@somemail.com'
    username 'ThisGuy'    
  end
end
