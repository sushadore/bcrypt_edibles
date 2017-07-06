require 'rails_helper'

describe "edit product path" do
  it "edits product detail" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', with: 'Delectable Turkish Delight'
    click_on 'Update Product'
    expect(page).to have_content 'Delectable Turkish Delight'
  end

  it "edits product detail" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_on 'Edit Product'
    fill_in 'Name', with: ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
