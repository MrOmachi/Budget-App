require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'get /categories' do
    it 'renders the categories page' do
      get '5'
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
