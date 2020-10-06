require 'rails_helper'

RSpec.describe 'FunctionnalTest' do

  context 'FunctionnalTest valid' do
    let(:functionnal_test) { FactoryBot.build(:functionnal_test) }
    it 'should have some attributes' do
      expect(functionnal_test).to be_valid
    end
  end

  context 'FunctionnalTest not valid' do
    let(:functionnal_test) { FactoryBot.build(:functionnal_test) }
    it 'should have some attributes' do
      functionnal_test.title = nil
      expect(functionnal_test).to_not be_valid
      functionnal_test.reference = nil
      expect(functionnal_test).to_not be_valid
      functionnal_test.tracker_number = nil
      expect(functionnal_test).to_not be_valid
      functionnal_test.url_link = nil
      expect(functionnal_test).to_not be_valid
    end
  end

  context 'Url link of FunctionnalTest valid' do
    let(:functionnal_test) { FactoryBot.build(:functionnal_test) }
    it 'should have some format' do
      functionnal_test.url_link = "https://google.com"
      expect(functionnal_test).to be_valid
    end
  end
=begin
  context 'Url link of FunctionnalTest not valid' do
    let(:functionnal_test) { FactoryBot.build(:functionnal_test) }
    it 'should not have some format' do
      functionnal_test.url_link = "fake"
      expect(functionnal_test).to_not be_valid
    end
  end
=end
end
