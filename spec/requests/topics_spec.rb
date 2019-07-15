require 'rails_helper'

RSpec.describe 'Topics API', type: :request do
  # initialize test data 
  let(:user) { create(:user) }
  let!(:topics) { create_list(:topic, 10) }
  let(:topic_id) { topics.first.id }
  let(:headers) { valid_headers }

  # Test suite for GET /topics
  describe 'GET /topics' do
    # make HTTP get request before each example
    before { get '/topics', params: {}, headers: headers }

    it 'returns topics' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /topics/:id
  describe 'GET /topics/:id' do
    before { get "/topics/#{topic_id}" }
    context 'when the record exists' do
      it 'returns the topic' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(topic_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:topic_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Topic/)
      end
    end
  end
end