class AddLastNameToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :last_name, :string
  end
end
