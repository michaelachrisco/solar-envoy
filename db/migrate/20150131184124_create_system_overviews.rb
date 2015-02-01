class CreateSystemOverviews < ActiveRecord::Migration
  def change
    create_table :system_overviews do |t|
      t.string :lifetime_generation
      t.string :currently_running
      t.string :last_connection_to_website
      t.integer :number_of_microconverters_online
      t.integer :number_of_microconverters
      t.string :current_software_version
      t.time :software_build_date
      t.string :database_size
      t.string :current_timezone
      t.string :envoy_ip_address
      t.string :envoy_mac_address
      t.string :envoy_power_line_device

      t.timestamps null: false
    end
  end
end
