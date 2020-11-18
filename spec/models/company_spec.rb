require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'creation' do
    it 'can be created' do
      company = Company.create(name: 'testcompany', country: 'Australia', currency: 'dollar', user_id: '2')

      expect(company).to be_valid
    end
  end
end
