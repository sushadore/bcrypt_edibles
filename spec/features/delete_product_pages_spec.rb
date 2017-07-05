require 'rails_helper'

describe "delete product path" do
  it "deletes a product" do
    Product.create(:name => 'Delicious Turkish Delight', :country_of_origin => 'South Africa', :cost => '4.33')
    visit products_path
    click_on 'Delicious Turkish Delight'
    click_on 'Delete Product'
    expect(page).to have_content ''
  end
end
