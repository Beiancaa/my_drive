class Clip < ActiveRecord::Base
    belongs_to :doc
    
    mount_uploader :file, FileUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true # Make sure the owner's name is present.
    
end