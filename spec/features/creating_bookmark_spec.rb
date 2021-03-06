feature 'Adding a new bookmark' do
  scenario 'A use can add a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button('Submit')
    expect(page).to have_content 'http://example.org'
  end
end