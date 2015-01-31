json.array!(@system_overviews) do |system_overview|
  json.extract! system_overview, :id, :lifetime_generation, :currently_running, :last_connection_to_website, :number_of_microconverters_online, :number_of_microconverters, :current_software_version, :software_build_date, :database_size, :current_timezone, :envoy_ip_address, :envoy_mac_address, :envoy_power_line_device
  json.url system_overview_url(system_overview, format: :json)
end
