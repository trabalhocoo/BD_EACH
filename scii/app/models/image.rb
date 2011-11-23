class Image < ActiveRecord::Base
	belongs_to :usuario
	has_many :comentarios
								
	has_attached_file :photo, :styles => {:small => "150x150>", :medium => "300x300", :large => "600X600"}
	
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
