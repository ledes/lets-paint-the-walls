require 'rubygems'
require 'sinatra'
require 'RMagick'
require 'pry'

include Magick

def save_image
  @image_name = params['myfile'][:filename]
  File.open('public/uploads/' + @image_name, "w") do |f|
      f.write(params['myfile'][:tempfile].read)
  end
end





get '/' do
  erb :index
end

get '/:image_name' do
  image = params[:image_name]

  image_2 = ImageList.new('public/uploads/' + image)
  smallcat_image_2 = image_2.minify

  img =  Magick::Image.read('public/uploads/' + image).first
  img = img.normalize
  img = img.modulate(0.85)
  color_coordinates =img.pixel_color(100,100)
  color_coordinates2 =img.pixel_color(100,200)

  img.fuzz =  '16%' #not neccesary yet
#  img = img.opaque(color_coordinates, 'orange')
  img = img.opaque_channel(color_coordinates, '#9999CC', invert=false, fuzz=img.fuzz )
  img = img.opaque_channel(color_coordinates2, '#9999CC', invert=false, fuzz=img.fuzz )

  # select several coordinates, and each time the img will be ovewriting the previus one,
  #improving the select
  #right now there isnt any texture. => create composite with the original image,
  #plus last conversion with a reduction of the opacity


  img.write('public/uploads/newwalls_' + image)



  erb :show, locals: {image: image, image_2: image_2}
end

post '/' do
  save_image
  redirect '/' + @image_name
end



# NOTES:
# Home page its a welcome page with a form to submit an image.
#The image uploaded should be stored.

# After the submition:
# the page(:show) should display the orignal image, with a:
# => list of option of colors to change
# => a way to choose a coordinate in the image
# => Fuzz slidebar => javascript. showing the original image in one extrem and the new one in the other(fuzz)
