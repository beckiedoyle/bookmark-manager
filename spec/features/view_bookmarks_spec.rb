require 'pg'

feature 'View bookmarks' do

  scenario 'Access my bookmarks on the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'See my bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES (1, 'https://makers.tech');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'https://www.google.co.uk/');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'https://http.cat/');")

    visit '/bookmarks'
    expect(page).to have_content "https://makers.tech"
    expect(page).to have_content "https://www.google.co.uk/"
    expect(page).to have_content "https://http.cat/"
  end

end
