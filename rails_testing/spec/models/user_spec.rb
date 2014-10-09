require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with first_name, last_name and email" do
    user = User.new(first_name: "Lawrence", last_name: "Seinfeld", email: "lawrenceseinfeld@gmail.com")
    expect(user).to be_valid
  end

  it "saves user to the database" do
    expect{ User.create(first_name: "Lawrence", last_name: "Seinfeld", email: "lawrenceseinfeld@gmail.com") }.to change{User.count}.by(1)
  end

  it "returns user's first name as a string" do
    user = User.new(first_name: "Lawrence")
    expect(user.first_name).to eq("Lawrence")
  end

end
