require 'rails_helper'

describe "add product path" do
  it "adds a new product" do
    visit new_product_path
    fill_in 'Product Name', with: 'Tasty Treats'
    fill_in 'Country of Origin', with: 'USA'
    fill_in 'Cost', with: '4.33'
    click_on 'Create Product'
    expect(page).to have_content 'Product has been added'
    expect(page).to have_content 'Tasty Treats'
  end

  it "returns error when field is left blank" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
