require "rubygems"
require "bundler/setup"
require "sinatra"
require "fastimage"
def get_photos(pattern)
	Dir.glob(pattern).map do |photo| 
		name = photo.sub("./public","")
		list = FastImage.size(photo)
		width = list[0] 
		height = list[1]
		[name, width, height]
	end
end
get "/" do
	erb :homepage
end
get "/gallery" do
	@photos = get_photos("./public/Photos/*/*.jpg")
	erb :gallery
end
get "/gallery/travel" do
	@photos = get_photos("./public/Photos/Travel/*.jpg")
	erb :gallery
end
get "/gallery/portrait" do
	@photos = get_photos("./public/Photos/Portrait/*.jpg")
	erb :gallery
end
get "/gallery/engagement_family" do
	@photos = get_photos("./public/Photos/engagement_family/*.jpg")
	erb :gallery
end
get "/about" do
	erb :about
end
get "/contact" do
	erb :contact
end
