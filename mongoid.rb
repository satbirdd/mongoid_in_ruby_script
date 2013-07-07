require 'mongoid'
# open a file in web like open a local file by open-uri
require 'open-uri'

Mongoid.load!('mongoid.yml', :production)

class ImageFile
	include Mongoid::Document
	field :imagefile, type: Moped::BSON::Binary
end

# ImageFile.create(imagefile: Moped::BSON::Binary.new(:generic, open('http://img03.taobaocdn.com/imgextra/i3/323476571/T28SPFXX4XXXXXXXXX_!!323476571.jpg','rb') {|io| io.read }))