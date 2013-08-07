# == Summary
# 
# A +score+ represents a file that contains the score for a 
# +composition+. 
#
class Score < ActiveRecord::Base
  belongs_to :composition
  
end