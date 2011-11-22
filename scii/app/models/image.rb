class Image < ActiveRecord::Base
	validates :url, :presence => true
	validates_format_of :url, 
								:with => %r{\.(gif|jpg|jpeg|png)$}i,
								:message => 'deve ser gif, jpg ou png'
								
	has_attached_file :photo, :styles => {:small => "150x150>" }
	
end
