require 'rails_helper'

feature 'visual experience' do
  scenario 'stuff' do
    visit root_path
    expect(page).to have_content 'Hello World'
  end
end

feature 'User management' do
  scenario 'deletes a user' do
    User.create(first_name: "steve")
    visit root_path
    expect{
      click_link 'Delete User'
    }.to change(User, :count).by(0)

  end

end

