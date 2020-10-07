require 'rails_helper'

RSpec.describe "FunctionnalTests", type: :request do

  context 'GET #index' do
    it 'return a success response' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  context 'GET #show' do
    it 'return a success response' do
      test = FunctionnalTest.create!(title: "Premier test", reference: "Ticket xx", tracker_number: 5789, url_link: "https://google.com")
      get :show, params: { id: test.to_param }
      expect(response).to be_success
    end
  end

end
