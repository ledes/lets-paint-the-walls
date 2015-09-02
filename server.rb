require 'rubygems'
require 'sinatra'
require 'RMagick'
include Magick

def save_image
  File.open('uploads/' + params['myfile'][:filename], "w") do |f|
      f.write(params['myfile'][:tempfile].read)
  end
end

def show_image
 #it should return the name of the picture. Ex: wall1.jpg
end

get '/' do
  erb :index
end

get '/letspaint' do
  erb :show
end

post '/' do
  save_image
  redirect '/letspaint'
end

# NOTES:
# Home page its a welcome page with a form to submit an image.
#The image uploaded should be stored.

# After the submition:
# the page(:show) should display the orignal image, with a:
# => list of option of colors to change
# => Fuzz slidebar => javascript
