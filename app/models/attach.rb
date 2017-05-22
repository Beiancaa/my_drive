class Attach < ActiveRecord::Base
    
    belongs_to :doc
    
    mount_uploader :file, FileUploader
    validates :name, presence: true
    
end
