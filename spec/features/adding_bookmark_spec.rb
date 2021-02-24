feature "Adding bookmark" do 
  scenario "Visiting new bookmark page" do 
    visit '/bookmarks/new'
    fill_in 'url', with: 'https://stackoverflow.com/'
    fill_in 'title', with: 'stack overflow'
    click_button('Submit')
    
    expect(page).to have_link('stack overflow', href: 'https://stackoverflow.com/')
  end
end 
