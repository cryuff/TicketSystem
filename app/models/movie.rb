class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :seances
	has_attached_file :poster, :styles => { :thumb => "120x173>" },
 	 :default_style => :medium,
	 :default_url => "who.png",
	 :url => ':s3_domain_url',
  	 :path => '/:class/:attachment/:id_partition/:style/:filename'
  	validates_attachment_content_type :poster, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
