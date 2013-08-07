# == Summary
# 
# A +composition+ object is an abstract idea that can link to many different things
# including +scores+, +arrangers+, and +composers+. 
#
class Composition < ActiveRecord::Base
  has_many :scores, :dependent => :destroy
  has_many :compositionships
  has_many :composers, :through => :compositionship, :foreign_key => :musician_id

  validates_presence_of :title

  attr_accessible :title
  attr_accessible :subtitle

end
