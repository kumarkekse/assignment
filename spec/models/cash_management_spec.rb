require 'rails_helper'

RSpec.describe CashManagement, type: :model do
  describe 'creation' do
    it 'can be created' do
      cash_management = CashManagement.create(initial_cash: '1000', cash_out: '250', cash_in: '750')

      expect(cash_management).to be_valid
    end
  end
end
