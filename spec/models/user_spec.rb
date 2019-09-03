require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(username: 'user', email: 'satyajeet@example.com', password: 'password')
  end

  it "signs up a user with valid email address and password" do
    expect(@user).to be_valid
    expect(@user.errors[:username].any?).to be_falsey
    expect(@user.errors[:email].any?).to be_falsey
    expect(@user.errors[:password].any?).to be_falsey
  end
  
  it "requires an user name" do
    @user.username = nil
    
    expect(@user).not_to be_valid
    expect(@user.errors[:username].any?).to be_truthy
  end

  it "requires an email address" do
    @user.email = nil
    
    expect(@user).not_to be_valid
    expect(@user.errors[:email].any?).to be_truthy
  end

  it "requires a password" do
    @user.password = nil
    
    expect(@user).not_to be_valid
    expect(@user.errors[:password].any?).to be_truthy
  end

end
