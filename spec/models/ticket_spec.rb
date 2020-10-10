require 'rails_helper'

RSpec.describe 'Ticket' do

  context 'Ticket valid' do
    let(:ticket) { FactoryBot.build(:ticket) }
    it 'should have some attributes' do
      expect(ticket).to be_valid
    end
  end

  context 'Ticket not valid' do
    let(:ticket) { FactoryBot.build(:ticket) }
    it 'should have some attributes' do
      ticket.title = nil
      expect(ticket).to_not be_valid
      ticket.reference = nil
      expect(ticket).to_not be_valid
      ticket.tracker_number = nil
      expect(ticket).to_not be_valid
      ticket.url_link = nil
      expect(ticket).to_not be_valid
    end
  end

  context 'Url link of Ticket valid' do
    let(:ticket) { FactoryBot.build(:ticket) }
    it 'should have some format' do
      ticket.url_link = "https://google.com"
      expect(ticket).to be_valid
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
