# == Summary
# 
# An +part+ object is an score for an individual instrument or 
# vocalist that is a part of a larger +score+ object.
#
class Part < ActiveRecord::Base
  belongs_to :score
  
end