require "googlebooks"
require "sinatra"

get "/results" do
  theResult = GoogleBooks.search("#{params[:book]}")
  bookResult = theResult.first

  @bookAuthor = bookResult.authors
  @bookTitle = bookResult.title
  @bookID = bookResult.id
  @bookISNB = bookResult.isnb
  @bookImage = bookResult.image_link
  erb :results
end

get "/" do
  erb :home
end
