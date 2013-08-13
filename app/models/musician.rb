# == Summary
# 
# A +musician+ object is a representation of a musician that can act
# as one or many things. A +musician+ can be an arranger through an
# +arrangership+, a composer through a +compositionship+, or a 
# performer through a +performership+. 
#
class Musician < ActiveRecord::Base
  has_many :arrangerships, :dependent => :destroy
  has_many :compositionships
  has_many :performerships, :dependent => :destroy
  has_many :scores, :through => :arrangerships
  has_many :compositions, :through => :compositionships
  has_many :performances, :through => :performerships
  
  attr_accessible :first_name, :middle_name, :last_name, :birthdate, :deathdate
  
  def full_name
    "#{self.last_name}, #{self.first_name} #{self.middle_name}"
  end
  
end