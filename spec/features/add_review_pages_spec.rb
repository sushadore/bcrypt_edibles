require 'rails_helper'

describe "add review path" do
  it "adds a new review" do
    Product.create(:name => 'Amazing Ambrosia', :country_of_origin => 'South Africa', :cost => '4.33')
    visit products_path
    click_on 'Amazing Ambrosia'
    click_on 'Review Product'
    fill_in 'Author', with: 'LuvSumYum'
    fill_in 'Review', with: 'Moonfish, steelhead, lamprey southern flounder tadpole fish sculpin bigeye, blue-redstripe danio collared dogfish. Smalleye squaretail goldfish arowana butterflyfish pipefish wolf-herring jewel tetra.'
    fill_in 'Rating', with: 4
    click_on 'Create Review'
    expect(page).to have_content 'LuvSumYum'
  end
  #
  # it "returns error when field is left blank" do
  #   visit new_product_path
  #   Product.create(:name => 'Delightful Turkish Delight', :country_of_origin => 'South Africa', :cost => '4.33')
  #   visit products_path
  #   click_on 'Delightful Turkish Delight'
  #   click_on 'Review Product'
  #   click_on 'Create Review'
  #   expect(page).to have_content 'errors'
  # end
end
