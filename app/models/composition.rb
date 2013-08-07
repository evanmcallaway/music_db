# == Summary
# 
# A composition object is an abstract idea that can link to many different things
# including scores, arrangers, and composers. 
#
class Composition < ActiveRecord::Base
#  has_many :scores, :dependent => :destroy

  validates_presence_of :title

end
