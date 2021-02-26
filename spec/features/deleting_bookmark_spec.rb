feature 'deleting a bookmark' do 
  scenario 'User deletes a bookmark' do
    Bookmark.create(url: 'https://stackoverflow.com/', title: 'stack overflow')
    visit('/bookmarks')
    click_button 'delete'

    expect(page).not_to have_link('stack overflow', href:'https://stackoverflow.com/')   
  end
end 
