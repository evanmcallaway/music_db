class Performance < ActiveRecord::Base
  belongs_to :compostion
  belongs_to :score
  has_many :performerships
  has_many :performers, :through => :performerships, :foreign_key => :musician_id
  
end