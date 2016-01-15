class Alert < ActiveRecord::Base
 belongs_to :user

 # ensure that a user_id is present
 validates :user_id, presence: true

 # ensure the url is present, and respets the URL format for http/https
 validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true

end
