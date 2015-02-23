class Retwet < ActiveRecord::Base
	belongs_to :user
	belongs_to :twet

	validates :twet, :presence => true
	validates :user, :presence => true
end
