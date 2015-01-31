require 'test_helper'

class SystemOverviewsControllerTest < ActionController::TestCase
  setup do
    @system_overview = system_overviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_overviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_overview" do
    assert_difference('SystemOverview.count') do
      post :create, system_overview: { current_software_version: @system_overview.current_software_version, current_timezone: @system_overview.current_timezone, currently_running: @system_overview.currently_running, database_size: @system_overview.database_size, envoy_ip_address: @system_overview.envoy_ip_address, envoy_mac_address: @system_overview.envoy_mac_address, envoy_power_line_device: @system_overview.envoy_power_line_device, last_connection_to_website: @system_overview.last_connection_to_website, lifetime_generation: @system_overview.lifetime_generation, number_of_microconverters: @system_overview.number_of_microconverters, number_of_microconverters_online: @system_overview.number_of_microconverters_online, software_build_date: @system_overview.software_build_date }
    end

    assert_redirected_to system_overview_path(assigns(:system_overview))
  end

  test "should show system_overview" do
    get :show, id: @system_overview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_overview
    assert_response :success
  end

  test "should update system_overview" do
    patch :update, id: @system_overview, system_overview: { current_software_version: @system_overview.current_software_version, current_timezone: @system_overview.current_timezone, currently_running: @system_overview.currently_running, database_size: @system_overview.database_size, envoy_ip_address: @system_overview.envoy_ip_address, envoy_mac_address: @system_overview.envoy_mac_address, envoy_power_line_device: @system_overview.envoy_power_line_device, last_connection_to_website: @system_overview.last_connection_to_website, lifetime_generation: @system_overview.lifetime_generation, number_of_microconverters: @system_overview.number_of_microconverters, number_of_microconverters_online: @system_overview.number_of_microconverters_online, software_build_date: @system_overview.software_build_date }
    assert_redirected_to system_overview_path(assigns(:system_overview))
  end

  test "should destroy system_overview" do
    assert_difference('SystemOverview.count', -1) do
      delete :destroy, id: @system_overview
    end

    assert_redirected_to system_overviews_path
  end
end
