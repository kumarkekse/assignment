require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'create' do
    it 'successfully creates a new user' do
      user = User.create(email: 'test6@gmail.com', name: 'testuser', surname: 'test', user_type: 'Student', password: 'asdf', password_confirmation: 'asdf')
      expect(User.last.username).to eq('testuser')
    end
  end
end
