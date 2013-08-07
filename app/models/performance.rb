# == Summary
# 
# A +performance+ object is a representation of a performance of a certain
# arrangement of a composition, be it the original or an arrangement. It is
# linked to the +composition+ that it represents and the +score+ of the 
# arrangement.
#
class Performance < ActiveRecord::Base
  belongs_to :compostion
  belongs_to :score
  
end