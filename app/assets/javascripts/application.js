// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
//= require ckeditor/init
$(document).on('turbolinks:load', function() {
			$('.zoom').zoom();
		if($('#subscription_type_of_organization_other').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", false);
        	}
            else if($('#subscription_type_of_organization_private_sector').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        	else if($('#subscription_type_of_organization_government_sector').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        	else if($('#subscription_type_of_organization_education_institute').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        	if($('#subscription_housed_in_labelother').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", false);
        	}
            else if($('#subscription_housed_in_temple').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
        	else if($('#subscription_housed_in_local_museum').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
        	else if($('#subscription_housed_in_government_agency_or_university').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
		});


   
   $(document).on('turbolinks:load', function () {
        $("input:radio[name='subscription[type_of_organization]']").change( function () {
        	if($('#subscription_type_of_organization_other').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", false);
        	}
            else if($('#subscription_type_of_organization_private_sector').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        	else if($('#subscription_type_of_organization_government_sector').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        	else if($('#subscription_type_of_organization_education_institute').is(':checked')){
        		$("#subscription_type_of_org_other").attr("disabled", true);
        	}
        });
    });

   $(document).on('turbolinks:load', function () {
        $("input:radio[name='subscription[housed_in]']").change( function () {
        	if($('#subscription_housed_in_other').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", false);
        	}
            else if($('#subscription_housed_in_temple').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
        	else if($('#subscription_housed_in_local_museum').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
        	else if($('#subscription_housed_in_government_agency_or_university').is(':checked')){
        		$("#subscription_house_in_other").attr("disabled", true);
        	}
        });
    });

