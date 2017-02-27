require "rails_helper"

describe "POST api/v1/links" do
  context "a link is sent to the hot reads api" do
    it "updates the count of the link" do
      params = {link: "https://url.com"}
      post '/api/v1/links', params: params

      link_response = JSON.parse(response.body)

      expect(response).to be_success
      expect(link_response['message']).to eq("Updated Hot Reads")
    end
  end
end
