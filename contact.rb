require 'pry'

class Contact

  @@contacts = []
  @@id = 1

  attr_accessor :first_name, :last_name, :email, :note #reader and writer setup
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id #sets the id# to the class from whatever last value of id is
    @@id += 1 # this way the next contact will get a different id
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it

  def self.create(first_name, last_name, email, note)
    # remember, we preface the method name with 'self.' if it is a class method
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    all.select { |contact| self.id == id } #need .id to call the reader for id on the instance of contact stored in the array
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(atrribute, value)
    all.select { |contact| self.attribute == value}

  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end

Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# How can I get contact's email?
# puts contact.email
# Then how can I change contact's note to 'Loves Pokemon'?
# puts contact.note

puts Contact.all
