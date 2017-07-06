require 'rails_helper'

describe "log user path" do
  it "logs out a user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on  'Sign out'
    expect(page).to have_content "You've signed out."
  end

  it "logs in a user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on  'Sign out'
    click_on 'Log In'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    expect(page).to have_content "ThisGuy"
    expect(page).to have_content "You're signed in."
  end
end
