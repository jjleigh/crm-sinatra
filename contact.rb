class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(id, first_name, last_name, email, note)
		@first_name = first_name
		@id = id
		@last_name = last_name
		@email = email
		@note = note
	end
end 