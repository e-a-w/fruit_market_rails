require 'rails_helper'

RSpec.describe 'Welcome', type: :request do
  describe 'GET welcome#index as root' do
    before(:example) { get root_path }

    it 'is successful' do
      expect(response).to have_http_status(:success)
    end

    it 'renders "welcome index" template' do
      expect(response).to render_template('index')
    end
  end
end