class Doc < ActiveRecord::Base
    
    belongs_to :user
    has_many :clips
    
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    
end
