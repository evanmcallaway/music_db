# == Summary
# 
# An +arrangementship+ object is a link between a +score+ and a 
# +musician+ that acted as the arranger.
#
class Arrangership < ActiveRecord::Base
  belongs_to :score
  belongs_to :musician
  
end