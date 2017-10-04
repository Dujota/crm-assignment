class CRM

  def initialize

  end

#given to us in the exercise - basically always has the main menu running
  def main_menu
    while true #repeat indefinitely - inifinite loop
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
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

  def call_option

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
