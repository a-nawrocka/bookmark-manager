require "bookmark" 
require "database_helpers"

describe Bookmark do 
  describe ".all" do 
    it "returns all bookmarks" do          
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "makers")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "destroy")
      Bookmark.create(url: "http://www.google.com", title: "google")

      bookmarks = Bookmark.all
      
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq "makers"
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
    end
  end

  describe ".create" do 
    it "creates new bookmark" do 
      bookmark = Bookmark.create(url: "https://stackoverflow.com", title: "stack overflow")
      persisted_data = persisted_data(id: bookmark.id) 

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq("https://stackoverflow.com")
      expect(bookmark.title).to eq("stack overflow")
    end
  end

  describe ".delete" do 
    it "deletes a bookmark" do 
      bookmark = Bookmark.create(url: "https://stackoverflow.com", title: "stack overflow")
    
      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all).to be_empty
    end
  end 

end 


