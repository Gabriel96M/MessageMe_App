// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'
import '@doabit/semantic-ui-sass'
// import '@doabit/semantic-ui-sass/src/scss/semantic-ui.scss'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// $(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());

// $('.message .close').on('click', function() {
//     $(this).closest('.message').transition('fade');
// });
export const scroll_bottom = function() {
        if ($('#messages').length > 0) {
            $('#messages').scrollTop($('#messages')[0].scrollHeight);
        }
};

const submit_message = function(){
        $('#message_body').on('keydown', function(e){
                if(e.keycode == 13){
                        $('button').click();
                        // e.target.valure = "";
                };
        });  
};

$(document).bind("ajax:beforeSend", function(){
        $('#message_body').val('');
    });

$(document).on('turbolinks:load', function(){     
        $(".ui.dropdown").dropdown();    
        $('.message .close').on('click', function(){ $(this).closest('.message').transition('fade')     
        });
        scroll_bottom();
        submit_message();
        
});



