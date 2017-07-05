require 'rails_helper'

describe "edit product path" do
  it "edits product detail" do
    Product.create(:name => 'Delicate Turkish Delight', :country_of_origin => 'South Africa', :cost => '4.33')
    visit products_path
    click_on 'Delicate Turkish Delight'
    click_on 'Edit Product'
    fill_in 'Name', with: 'Delectable Turkish Delight'
    click_on 'Update Product'
    expect(page).to have_content 'Delectable Turkish Delight'
  end
end
