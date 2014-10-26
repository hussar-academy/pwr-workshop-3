require 'rails_helper'

RSpec.describe "Digs", :type => :request do
  describe "GET /digs" do
    it "works! (now write some real specs)" do
      get digs_path
      expect(response.status).to be(200)
    end
  end
end
