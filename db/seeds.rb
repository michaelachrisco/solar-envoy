require 'factory_girl_rails'
@lifetime_generation = 0
10.times do
  
  system_overview = FactoryGirl.create(:system_overview, :lifetime_generation => @lifetime_generation )
  @lifetime_generation =+ system_overview[:currently_running].to_f
end
