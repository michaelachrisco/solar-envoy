FactoryGirl.define do
  factory :system_overview do
    lifetime_generation '100 Kwh'
    currently_running { Faker::Number.number(2).to_s }
    last_connection_to_website { Faker::Number.digit.to_s + ' minutes' }
    number_of_microinverters_online { Faker::Number.number(2) }
    number_of_microinverters { Faker::Number.number(2) }
    current_software_version 'V1.0.0'
    software_build_date Time.new('2014,01,01')
    database_size '10 MB'
    current_timezone 'Pacific Standard Time'
    envoy_ip_address Faker::Internet.ip_v4_address
    envoy_mac_address Faker::Internet.mac_address
    envoy_power_line_device 'Power'
  end
end
