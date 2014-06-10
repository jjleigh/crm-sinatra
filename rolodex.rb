class Rolodex
	def initialize(name)
		@contacts =[ 
			@contacts << Contact.new("Julie", "Hache", "julie@bitmakerlabs.com", "Instructor")]
		@contact_id = 1000
	end

	def add_contact(contact)
		contact.id = contact_id
		@contacts << contact
		@contact_id += 1
	end
end 