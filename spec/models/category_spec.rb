require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create(full_name: 'Zelalem', email: '123@gmail.com', password: '123456')
    @category = Category.create(name: 'Food', icon: 'test', user_id: @user.id)
  end

  it 'is valid with valid attributes' do
     expect(@category).to be_valid
   end

   it 'is not valid without an icon' do
     @category.icon = nil
     expect(@category).to be_valid
   end

   it 'is not valid without a name' do
     @category.name = nil
     expect(@category).to be_valid
   end
   
end