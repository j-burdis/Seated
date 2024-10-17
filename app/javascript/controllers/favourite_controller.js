import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // this.element.textContent = "Hello World!"

  }

  toggle(event) {
    event.currentTarget.classList.remove("fa-regular");
    event.currentTarget.classList.add("fa-solid");
    // event.currentTarget.parentElement.style.pointerEvents = "none";
    // console.log(event.currentTarget.parentElement)
  }
}
