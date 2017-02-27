require "rails_helper"

describe "POST api/v1/links" do
  context "a link is sent to the hot reads api" do
    it "updates the count of the link" do
      params = {link: "https://url.com"}
      post '/api/v1/links', params: params

      message = JSON.parse(response.body)

      expect(response).to be_success
      expect(message['message']).to eq("Updated Hot Reads")
    end
  end
end
