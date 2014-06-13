class Rolodex
	attr_reader :contacts

	def initialize
		@contacts =[]
		@contact_id = 1000
	end

	def add_contact(contact)
		contact.id = @contact_id
		@contacts << contact
		@contact_id += 1
	end

	def find(contact_id)
		@contacts.find{|contact| contact.id == contact_id}
		
	end
end 