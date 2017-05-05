require 'rails_helper'

RSpec.describe RollsController, type: :controller do
  describe '#index' do
    before { get :index }

    it 'renders a json containing roll and results' do
      body = JSON.parse(response.body)
      expect(body.keys).to match_array ['roll', 'results'] 
    end
  end
end
