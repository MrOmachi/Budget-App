require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create(full_name: 'Zelalem', email: '123@gmail.com', password: '123456')
    @category = Category.create(name: 'Food', icon: 'test', user_id: @user.id)
  end

  it 'is valid with valid attributes' do
    expect(@category).to be_valid
  end

  it 'A valid icon is present for category' do
    @category.icon = 'test'
    expect(@category).to be_valid
  end

  it 'Shows a valid name for categoryu' do
    @category.name = 'Food'
    expect(@category).to be_valid
  end

  it 'is not valid without a user_id' do
    @category.user_id = nil
    expect(@category).to_not be_valid
  end
end
