class CRM

  def initialize

  end

#given to us in the exercise - basically always has the main menu running
  def main_menu
    while true #repeat indefinitely - inifinite loop
      print_main_menu # calls print_main_menu method
      user_selected = gets.to_i #stores user input into a local variable
      call_option(user_selected) #passes local variable to call_option mehtod below
    end
  end

  def print_main_menu
    puts '[1] Add new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all contacts'
    puts '[5] Search by attributes'
    puts '[6] Exit'
    puts 'Enter a number: '
  end
#We have two methods: print_main_menu prints out the menu and main_menu calls print_main_menu and then stores the user input (a number) into a variable called user_selected. That variable then gets passed as an argument into call_option

# ---------------------------------------------------------------------------

# What do you think call_option should do? Remember, user_selected is going to be a number. What we want to do in this method is call other methods based on the number.
  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit(0)  # can also do else exit as the last condition, up to programmer
    end
  end

#this is where we get the values for the contact class initializer we then pass in the values stored in the local variables into the contact.create function
  def add_new_contact
    print 'Please enter First Name: '
    first_name = gets.chomp.to_s

    print 'Please enter Last Name: '
    last_name = gets.chomp.to_s

    print 'Please enter your Email address: '
    email = gets.chomp.to_s

    print 'Please enter a Note'
    note = gets.chomp.to_s

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    #first we need to get the inputs from the user so we know what to pass into the find class method.
    print "Please enter the ID# of the contact you want to update: "
    id = gets.chomp.to_i

    #once we know the ID value, we then need t know which attribute we want to pass into update method -- see method in contact.rb
    print "What aspect(field) of the contact would you like to change?"
    attribute = gets.chomp.to_s

    #now that we have the attribute and id saved in variables, we need the final piece which will be the new value for the attribute, we are also passing this variable to the update method
    print "We will change #{attribute}. Please enter the new value: "
    value = gets.chomp.to_s

    #now that we have all the info stored in variables, we can start using the mehtods
    contact = Contact.find(id)
    contact.udpate(attribute, value) # pulling method from contact file
  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
