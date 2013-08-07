# == Summary
# 
# A +performership+ object is a link between a +performance+ object and a 
# +musician+ object. It represents that specific musician performing in that
# linked performance.
#
class Performership < ActiveRecord::Base
  belongs_to :performance
  belongs_to :musician
  
end