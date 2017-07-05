require 'rails_helper'

describe "add product path" do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', with: 'Delightful Turkish Delight'
    fill_in 'Country of Origin', with: 'South Africa'
    fill_in 'Cost', with: '4.33'
    click_on 'Create Product'
    expect(page).to have_content 'Delightful Turkish Delight'
  end

  it "returns error when field is left blank" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
