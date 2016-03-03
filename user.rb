module Destructable
	def destroy(someObject)
		puts "I will destroy the object"	
	end
end			

class User
	include Destructable
	attr_accessor :name, :email
		
	def initialize(name, email)
		@name = name
		@email = email
	end
	
	def run
		puts "Hey I'm running from class User.."
	end

	def self.identify_yourself
		puts "I'm form User class static"
	end
end

class Buyer < User
	def run
		puts "running from class Buyer"
	end
end

class Seller < User
end

class Admin < User
end

User.identify_yourself
user = User.new("remz fernandez", "remz@fernandez.com");
user.destroy("userclass")

