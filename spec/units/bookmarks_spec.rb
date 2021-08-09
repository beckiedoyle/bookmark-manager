require 'bookmarks'

describe Bookmarks do

  describe '.all' do
    it 'shows me all of my bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include "https://makers.tech"
      expect(bookmarks).to include "https://www.google.co.uk/"
      expect(bookmarks).to include "https://http.cat/"
    end
  end

end