feature 'Viewing bookmarks' do 
  scenario 'visiting the index page' do 
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'visiting the bookmarks page' do 
    Bookmark.create(url: "http://www.makersacademy.com", title: "makers")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "destroy")
    Bookmark.create(url: "http://www.google.com", title: "google")

    visit '/bookmarks'
    
    expect(page).to have_link("makers", href: "http://www.makersacademy.com")
    expect(page).to have_link("destroy", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("google", href: "http://www.google.com")
  end
end 

