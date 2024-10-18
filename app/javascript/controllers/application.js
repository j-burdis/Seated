import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

const element = document.querySelector(".favourite-toggle-btn");
console.log(element);
