class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 500, :minimum => 5 }
	validates :author, :presence =>true, :length => { :maximum => 50, :minimum => 3 }
end
