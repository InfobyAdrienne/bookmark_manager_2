feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'User can see all bookmarks' do
    
    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.youtube.com")
    Bookmark.create(url: "http://www.twitter.com")

    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.youtube.com"
    expect(page).to have_content "http://www.twitter.com"
  end
end
