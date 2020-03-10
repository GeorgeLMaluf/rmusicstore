require 'rails_helper'

RSpec.describe "TipoMedia", type: :request do
  describe "GET /tipo_media" do
    it "works! (now write some real specs)" do
      get tipo_media_index_path
      expect(response).to have_http_status(200)
    end
  end
end
