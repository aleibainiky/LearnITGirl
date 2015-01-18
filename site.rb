require "rubygems"
require "bundler/setup"
require "sinatra"
get "/" do
	erb :homepage
end
get "/gallery" do
	erb :gallery
end
get "/about" do
	erb :about
end
get "/contact" do
	erb :contact
end