require 'pg'

feature 'View bookmarks' do

  scenario 'Access my bookmarks on the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'See my bookmarks' do
    Bookmark.create(url: "https://makers.tech")
    Bookmark.create(url: "https://www.google.co.uk/")
    Bookmark.create(url: "https://http.cat/")

    visit '/bookmarks'
    expect(page).to have_content "https://makers.tech"
    expect(page).to have_content "https://www.google.co.uk/"
    expect(page).to have_content "https://http.cat/"
  end

end
