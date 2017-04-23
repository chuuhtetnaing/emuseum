class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :org_name_thai
      t.string :org_abbr_thai
      t.string :org_name_eng
      t.string :org_abbr_eng
      t.string :email_address
      t.boolean :type_of_org_private_sector
      t.boolean :type_of_org_government_sector
      t.boolean :type_of_org_education_institute
      t.string :type_of_org_other
      t.string :street_address
      t.string :tambon
      t.string :amphur
      t.string :province
      t.integer :postal_code
      t.integer :telephone
      t.boolean :house_in_temple
      t.boolean :house_in_local_museum
      t.boolean :house_in_government_agency_or_uni
      t.string :house_in_other
      t.boolean :museum_type_art_museum
      t.boolean :museum_type_modern_art_museum
      t.boolean :museum_type_natural_history_museum
      t.boolean :museum_type_science_museum_or_machinery_museum
      t.boolean :museum_type_anthropology_museum
      t.boolean :museum_type_history_and_archaeology_museum
      t.boolean :museum_type_local_museum
      t.boolean :museum_type_university_or_institute_museum
      t.string :museum_type_other
      t.boolean :exhibition_type_permanent_collection
      t.boolean :exhibition_type_temporary_rotated_collection
      t.boolean :displayed_object_type_pottery
      t.boolean :displayed_object_type_natural_history
      t.boolean :displayed_object_type_public_health_medicine
      t.boolean :displayed_object_type_religious
      t.boolean :displayed_object_type_archaeology
      t.boolean :displayed_object_type_history
      t.boolean :displayed_object_type_way_of_life_local_wisdom
      t.boolean :displayed_object_type_historical_house_building
      t.boolean :displayed_object_type_textile_clothing
      t.boolean :displayed_object_type_performance_arts
      t.boolean :displayed_object_type_tribes
      t.boolean :displayed_object_type_biography
      t.boolean :displayed_object_type_architecture
      t.boolean :displayed_object_type_military_war
      t.string :displayed_object_type_science_and_technology
      t.string :displayed_object_type_other
      t.string :current_website
      t.string :accept_or_reject, default: "waiting"

      t.timestamps
    end
  end
end