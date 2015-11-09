class Contact
  attr_reader :id 
	attr_accessor :first_name, :last_name, :email, :notes

  @@contacts = []
  @@id = 1

    def initialize(first_name,last_name, options = {})
      @id = @@id
      @first_name = first_name
      @last_name = last_name
      @email = options[:email]
      @notes = options[:notes] 

      @@id += 1
    end

    def self.create(first_name, last_name, options = {})
      new_contact = Contact.new(first_name, last_name, options)
      @@contacts << new_contact
    end

    def self.all
      @@contacts
    end

    def full_name
      "#{first_name} #{last_name}"
    end
# attr_accessor creates these methods
# 	def first_name
# 		@first_name
# 	end

# 	def first_name=(new_first_name)
#     @first_name = new_first_name
end

# jessica = Contact.new('jessica', 'li', {email: 'jli@gitmaker.com', notes: 'super cool!'})
# natalie = Contact.new('natalie', 'black')