class AddFirstNameToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :first_name, :string
  end
end
