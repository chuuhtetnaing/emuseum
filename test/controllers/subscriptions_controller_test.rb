require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscription = subscriptions(:one)
  end

  test "should get index" do
    get subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_subscription_url
    assert_response :success
  end

  test "should create subscription" do
    assert_difference('Subscription.count') do
      post subscriptions_url, params: { subscription: { amphur: @subscription.amphur, current_website: @subscription.current_website, displayed_object_type_archaeology: @subscription.displayed_object_type_archaeology, displayed_object_type_architecture: @subscription.displayed_object_type_architecture, displayed_object_type_biography: @subscription.displayed_object_type_biography, displayed_object_type_historical_house_building: @subscription.displayed_object_type_historical_house_building, displayed_object_type_history: @subscription.displayed_object_type_history, displayed_object_type_military_war: @subscription.displayed_object_type_military_war, displayed_object_type_natural_history: @subscription.displayed_object_type_natural_history, displayed_object_type_other: @subscription.displayed_object_type_other, displayed_object_type_performance_arts: @subscription.displayed_object_type_performance_arts, displayed_object_type_pottery: @subscription.displayed_object_type_pottery, displayed_object_type_public_health_medicine: @subscription.displayed_object_type_public_health_medicine, displayed_object_type_religious: @subscription.displayed_object_type_religious, displayed_object_type_science_and_technology: @subscription.displayed_object_type_science_and_technology, displayed_object_type_textile_clothing: @subscription.displayed_object_type_textile_clothing, displayed_object_type_tribes: @subscription.displayed_object_type_tribes, displayed_object_type_way_of_life_local_wisdom: @subscription.displayed_object_type_way_of_life_local_wisdom, exhibition_type_permanent_collection: @subscription.exhibition_type_permanent_collection, exhibition_type_temporary_rotated_collection: @subscription.exhibition_type_temporary_rotated_collection, house_in_government_agency_or_uni: @subscription.house_in_government_agency_or_uni, house_in_local_museum: @subscription.house_in_local_museum, house_in_other: @subscription.house_in_other, house_in_temple: @subscription.house_in_temple, museum_type_anthropology_museum: @subscription.museum_type_anthropology_museum, museum_type_art_museum: @subscription.museum_type_art_museum, museum_type_history_and_archaeology_museum: @subscription.museum_type_history_and_archaeology_museum, museum_type_local_museum: @subscription.museum_type_local_museum, museum_type_modern_art_museum: @subscription.museum_type_modern_art_museum, museum_type_natural_history_museum: @subscription.museum_type_natural_history_museum, museum_type_other: @subscription.museum_type_other, museum_type_science_museum_or_machinery_museum: @subscription.museum_type_science_museum_or_machinery_museum, museum_type_university_or_institute_museum: @subscription.museum_type_university_or_institute_museum, org_abbr_eng: @subscription.org_abbr_eng, org_abbr_thai: @subscription.org_abbr_thai, org_name_eng: @subscription.org_name_eng, org_name_thai: @subscription.org_name_thai, postal_code: @subscription.postal_code, province: @subscription.province, street_address: @subscription.street_address, tambon: @subscription.tambon, telephone: @subscription.telephone, type_of_org_education_institute: @subscription.type_of_org_education_institute, type_of_org_government_sector: @subscription.type_of_org_government_sector, type_of_org_other: @subscription.type_of_org_other, type_of_org_private_sector: @subscription.type_of_org_private_sector } }
    end

    assert_redirected_to subscription_url(Subscription.last)
  end

  test "should show subscription" do
    get subscription_url(@subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscription_url(@subscription)
    assert_response :success
  end

  test "should update subscription" do
    patch subscription_url(@subscription), params: { subscription: { amphur: @subscription.amphur, current_website: @subscription.current_website, displayed_object_type_archaeology: @subscription.displayed_object_type_archaeology, displayed_object_type_architecture: @subscription.displayed_object_type_architecture, displayed_object_type_biography: @subscription.displayed_object_type_biography, displayed_object_type_historical_house_building: @subscription.displayed_object_type_historical_house_building, displayed_object_type_history: @subscription.displayed_object_type_history, displayed_object_type_military_war: @subscription.displayed_object_type_military_war, displayed_object_type_natural_history: @subscription.displayed_object_type_natural_history, displayed_object_type_other: @subscription.displayed_object_type_other, displayed_object_type_performance_arts: @subscription.displayed_object_type_performance_arts, displayed_object_type_pottery: @subscription.displayed_object_type_pottery, displayed_object_type_public_health_medicine: @subscription.displayed_object_type_public_health_medicine, displayed_object_type_religious: @subscription.displayed_object_type_religious, displayed_object_type_science_and_technology: @subscription.displayed_object_type_science_and_technology, displayed_object_type_textile_clothing: @subscription.displayed_object_type_textile_clothing, displayed_object_type_tribes: @subscription.displayed_object_type_tribes, displayed_object_type_way_of_life_local_wisdom: @subscription.displayed_object_type_way_of_life_local_wisdom, exhibition_type_permanent_collection: @subscription.exhibition_type_permanent_collection, exhibition_type_temporary_rotated_collection: @subscription.exhibition_type_temporary_rotated_collection, house_in_government_agency_or_uni: @subscription.house_in_government_agency_or_uni, house_in_local_museum: @subscription.house_in_local_museum, house_in_other: @subscription.house_in_other, house_in_temple: @subscription.house_in_temple, museum_type_anthropology_museum: @subscription.museum_type_anthropology_museum, museum_type_art_museum: @subscription.museum_type_art_museum, museum_type_history_and_archaeology_museum: @subscription.museum_type_history_and_archaeology_museum, museum_type_local_museum: @subscription.museum_type_local_museum, museum_type_modern_art_museum: @subscription.museum_type_modern_art_museum, museum_type_natural_history_museum: @subscription.museum_type_natural_history_museum, museum_type_other: @subscription.museum_type_other, museum_type_science_museum_or_machinery_museum: @subscription.museum_type_science_museum_or_machinery_museum, museum_type_university_or_institute_museum: @subscription.museum_type_university_or_institute_museum, org_abbr_eng: @subscription.org_abbr_eng, org_abbr_thai: @subscription.org_abbr_thai, org_name_eng: @subscription.org_name_eng, org_name_thai: @subscription.org_name_thai, postal_code: @subscription.postal_code, province: @subscription.province, street_address: @subscription.street_address, tambon: @subscription.tambon, telephone: @subscription.telephone, type_of_org_education_institute: @subscription.type_of_org_education_institute, type_of_org_government_sector: @subscription.type_of_org_government_sector, type_of_org_other: @subscription.type_of_org_other, type_of_org_private_sector: @subscription.type_of_org_private_sector } }
    assert_redirected_to subscription_url(@subscription)
  end

  test "should destroy subscription" do
    assert_difference('Subscription.count', -1) do
      delete subscription_url(@subscription)
    end

    assert_redirected_to subscriptions_url
  end
end
