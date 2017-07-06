require 'rails_helper'

describe "delete product path" do
  it "deletes a product" do
    product = FactoryGirl.create :product
    visit products_path
    click_on product.name
    click_on 'Delete Product'
    expect(page).to have_content ''
  end
end
