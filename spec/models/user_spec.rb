require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(full_name: 'John', email: 'zelalem@gmail.com', password: '123456')
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'Presents a valid name for user' do
    @user.full_name = 'John'
    expect(@user).to be_valid
  end

 
end
