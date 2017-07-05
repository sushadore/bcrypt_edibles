require 'rails_helper'

describe "delete product path" do
  it "deletes a product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', with: 'Delightful Turkish Delight'
    fill_in 'Country of Origin', with: 'South Africa'
    fill_in 'Cost', with: '4.33'
    click_on 'Create Product'
    click_on 'Delightful Turkish Delight'
    click_on 'Delete Product'
    expect(page).to have_content ''
  end
end
