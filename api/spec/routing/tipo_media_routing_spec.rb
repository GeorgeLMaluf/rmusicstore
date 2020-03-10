require "rails_helper"

RSpec.describe TipoMediaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tipo_media").to route_to("tipo_media#index")
    end

    it "routes to #show" do
      expect(:get => "/tipo_media/1").to route_to("tipo_media#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tipo_media").to route_to("tipo_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tipo_media/1").to route_to("tipo_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tipo_media/1").to route_to("tipo_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_media/1").to route_to("tipo_media#destroy", :id => "1")
    end
  end
end
