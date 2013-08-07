class Musician < ActiveRecord::Base
  has_many :arrangerships, :dependent => :destroy
  has_many :compositionships
  has_many :performerships, :dependent => :destroy
  has_many :scores, :through => :arrangerships
  has_many :compositions, :through => :compositionships
  has_many :performances, :through => :performerships
  
end