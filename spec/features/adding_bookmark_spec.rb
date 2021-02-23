feature "Adding bookmark" do 
  scenario "Visiting new bookmark page" do 
    visit '/bookmarks/new'
    fill_in 'url', with: 'https://stackoverflow.com/'
    click_button('Submit')
    
    expect(page).to have_content 'https://stackoverflow.com/'
  end
end 
