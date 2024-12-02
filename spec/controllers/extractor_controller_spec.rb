require 'rails_helper'

RSpec.describe ExtractorController, type: :controller do
  describe 'POST #extract' do
    it 'returns the number of diamonds for an expression with diamonds' do
      post :extract, params: { expression: "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>" }, format: :json

      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq("Quantidade de diamantes extraídos: 11")
    end

    it 'returns zero diamonds for an expression with no diamonds' do
      post :extract, params: { expression: "...." }, format: :json

      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq("Quantidade de diamantes extraídos: 0")
    end

    it 'returns zero diamonds when the expression is empty' do
      post :extract, params: { expression: "" }, format: :json

      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq("Quantidade de diamantes extraídos: 0")
    end
  end
end
