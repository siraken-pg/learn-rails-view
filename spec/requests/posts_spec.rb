require 'rails_helper'

describe "Posts", type: :request do
  describe "GET /index" do
    # pending "add some examples (or delete) #{__FILE__}"
    it "returns http 404" do
      get "/posts/index"
      expect(response).to have_http_status(404)
    end
  end
end
