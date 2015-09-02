

system('ls .')


system("convert wall1.jpg  -fill green -fuzz 15% -draw 'color 30,20 replace'  fuzz.png")


# cat = ImageList.new("http://i.imgur.com/lxHCykcl.jpg")
# smallcat = cat.minify
# smallcat.display
# smallcat.write("wall1.jpg")
# exit

# img = Magick::Image.read('wall1.jpg')
# img.first.level(-Magick::QuantumRange * 0.25, Magick::QuantumRange * 1.25, 1.0).write('out.png')


#decrease the contrast
#img.first.level(-Magick::QuantumRange * 0.25, Magick::QuantumRange * 1.25, 1.0).write('out.png')

#colors :
#df4e89 to 4fe275

#http://railscasts.com/episodes/374-image-manipulation?view=asciicast
# source = Magick::Image.read("octocat.png").first
# source = source.resize_to_fill(70, 70).quantize(256, Magick::GRAYColorspace).contrast(true)
#overlay = Magick::Image.read("stamp_overlay.png").first
#source.composite!(overlay, 0, 0, Magick::OverCompositeOp)
#colored = Magick::Image.new(70, 70) { self.background_color = "red" }
#colored.composite!(source.negate, 0, 0, Magick::CopyOpacityCompositeOp)
#colored.write("stamp.png")

######

# localthres_script = '~/Downloads/test/localthresh.sh' # CONSTANT LOCATION
#
# params = '-m 3 -r 25 -b 20 -n yes'
#
# pdf = Magick::ImageList.new("#{dir}/#{pdf_name_wo_ext}.pdf")
# i=1
# pdf.each do |page|
#   image_name = "#{pdf_name_wo_ext}_#{i}"
#   puts "==> Enhancing images..."
#   %x[#{localthres_script} #{params} #{dir}/#{image_name}.png #{dir}/PDF_SCRIPT/enhanced/#{image_name}.png]
#   puts "==> Moving images..."
#   %x[mv #{dir}/#{image_name}.png #{dir}/PDF_SCRIPT/original/#{image_name}.png]
#   i = i+1
# end # each
