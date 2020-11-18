require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = User.create(email: 'test6@gmail.com', name: 'testuser', surname: 'test', user_type: 'Student', password: '123456', password_confirmation: '123456')

      expect(user).to be_valid
    end
  end
end
