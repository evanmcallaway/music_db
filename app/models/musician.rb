# == Summary
# 
# An +musician+ object is a representation of a musician that can act
# as one or many things. A +musician+ can be an arranger through an
# +arrangership+, a composer through a +compositionship+, or a 
# performer through a +performership+. 
#
class Musician < ActiveRecord::Base
  has_many :arrangerships
  has_many :compositionships
  has_many :performerships
  has_many :arrangements, :through => :arrangerships
  has_many :compositions, :through => :compositionships
  has_many :performances, :through => :performerships
  
end