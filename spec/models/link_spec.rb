require 'rails_helper'

RSpec.describe Link, type: :model do
  context "top ten" do
    it "returns the top 10 links" do
      a = Link.create(url: "https://a.com", count: 16)
      b = Link.create(url: "https://b.com", count: 15)
      c = Link.create(url: "https://c.com", count: 14)
      d = Link.create(url: "https://d.com", count: 13)
      e = Link.create(url: "https://e.com", count: 12)
      f = Link.create(url: "https://f.com", count: 11)
      g = Link.create(url: "https://g.com", count: 10)
      h = Link.create(url: "https://h.com", count: 9)
      i = Link.create(url: "https://i.com", count: 8)
      j = Link.create(url: "https://j.com", count: 7)
      k = Link.create(url: "https://k.com", count: 6)
      l = Link.create(url: "https://l.com", count: 5)

      links = Link.top_ten

      expect(links.count).to eq(10)
      expect(links.first.count).to eq(a.count)
      expect(links.last.count).to eq(j.count)
    end
  end
end
