# == Summary
# 
# An +compositionship+ object is a link between a +score+ and a 
# +musician+ that acted as the composer.
#
class Compositionship < ActiveRecord::Base
  belongs_to :compostion
  belongs_to :musician
  
end