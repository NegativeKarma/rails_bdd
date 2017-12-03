require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :reader }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :reader }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:article)).to be_valid
    end
  end
end
