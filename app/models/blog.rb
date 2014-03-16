class Blog < ActiveRecord::Base

	belongs_to :user
	self.per_page = 2

	extend FriendlyId
	friendly_id :title, use: [:slugged, :history, :finders]

end