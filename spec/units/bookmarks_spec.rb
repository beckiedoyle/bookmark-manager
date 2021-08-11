require 'bookmarks'

describe Bookmark do

  describe '.all' do
    it 'shows me all of my bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES (1, 'https://makers.tech');")
      connection.exec("INSERT INTO bookmarks VALUES (2, 'https://www.google.co.uk/');")
      connection.exec("INSERT INTO bookmarks VALUES (3, 'https://http.cat/');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://makers.tech")
      expect(bookmarks).to include("https://www.google.co.uk/")
      expect(bookmarks).to include("https://http.cat/")
    end
  end

end