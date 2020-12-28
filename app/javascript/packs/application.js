// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("bootstrap")
import "../stylesheets/application.scss";
import "@fortawesome/fontawesome-free/js/all";

document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

import $ from "jquery"

require('packs/social-share-button.js.erb')
Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")

document.addEventListener('turbolinks:load', function(){
    window.addEventListener("trix-file-accept", function(event) {
        event.preventDefault()
        alert("File attachment not supported!")
      })
})