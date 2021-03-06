require "googlebooks"
require "sinatra"

get "/" do
  erb :home
end


get "/results" do
  bookSearch = GoogleBooks.search("#{params[:book]}")
  bookResult = bookSearch.first

  @bookAuthor = bookResult.authors
  @bookTitle = bookResult.title
  @bookID = bookResult.id
  @bookISBN = bookResult.isbn
  @bookImage = bookResult.image_link
  @bookInfo = bookResult.info_link
  @bookInfo = bookResult.info_link
  erb :results
end
