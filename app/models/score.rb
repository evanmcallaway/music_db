class Score < ActiveRecord::Base
  belongs_to :composition
  has_many :parts, :dependent => :destroy
  
end