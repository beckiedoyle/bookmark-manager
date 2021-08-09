feature 'View bookmarks' do
  scenario 'See my bookmarks on the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end
