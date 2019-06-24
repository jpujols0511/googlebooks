require "googlebooks"
require "sinatra"

get "/" do
  erb :home
end

get "/results" do
  theResult = GoogleBooks.search("#{params[:search]}")
  result = theResult.first
  @rapport = result.authors
  @theID = result.id
  @image = result.image_link
  @image2 = result.title
  erb :results
end
