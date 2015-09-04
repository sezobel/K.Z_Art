class Listing < ActiveRecord::Base
	
	if Rails.env.development?
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.png"
		 validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	else	
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.png" 
	    	 validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

		#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"],
						  #:storage => :dropbox,
	    				  #:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    				  #:path => ":style/:id_:filename"
	    				  
	end


	belongs_to :user

	# validates :name, :description, :price, presence:true 
	# validates :price, numericality: { greater_than :0 }
	  validates_attachment_presence :image 
      has_many :orders 
end 


# ------- >>> NEED TO FIX THE VALIDATING ATTACHEMNETS LINE 7  *********** 

    # for the ":content_type =>  may need to replace the following part with %w(image/jpeg image/jpg image/png) instead of 

#t(1) he site below said add this ---->  validates_attachment_content_type :file_name, :content_type => %w(image/jpeg image/jpg image/png)
# http://stackoverflow.com/questions/21508890/heroku-paperclip-weird-error-papercliperrorsmissingrequiredvalidatorerror

# ( 2) https://github.com/thoughtbot/paperclip  ---> link for github says use this -> validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/