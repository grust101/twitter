class User < ActiveRecord::Base

include BCrypt
has_secure_password
	has_many :tweets
	has_many :active_relationships, class_name: 'Relationship', foreign_key: "follower_id"
	has_many :passive_relationships, class_name: 'Relationship', foreign_key: "following_id"
  # Remember to create a migration!
end
