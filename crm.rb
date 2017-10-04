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
    when 6 then exit

    end

  end

  def add_new_contact

  end

  def modify_existing_contact

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
