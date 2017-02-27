require "rails_helper"

describe "user visits links_page" do
  it "displays the top 10 reads" do
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

    visit root_path

    expect(page).to have_content("Url:https://a.com Count:16 Url:https://b.com Count:15 Url:https://c.com Count:14 Url:https://d.com Count:13 Url:https://e.com Count:12 Url:https://f.com Count:11 Url:https://g.com Count:10 Url:https://h.com Count:9 Url:https://i.com Count:8 Url:https://j.com Count:7")
  end
end
