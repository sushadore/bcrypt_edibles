require 'rails_helper'

describe "edit product path" do
  it "edits product detail" do
    Product.create(:name => 'Delightful Turkish Delight')
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', with: 'Delightful Turkish Delight'
    fill_in 'Country of Origin', with: 'South Africa'
    fill_in 'Cost', with: '4.33'
    click_on 'Create Product'
    click_on 'Delightful Turkish Delight'
    click_on 'Edit Product'
    fill_in 'Name', with: 'Delicious Turkish Delight'
    click_on 'Update Product'
    expect(page).to have_content 'Delicious Turkish Delight'
  end
end
