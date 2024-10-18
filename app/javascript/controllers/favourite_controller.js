import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "star"
  ]

  connect() {
    // this.element.textContent = "Hello World!"

  }

  toggle(event) {
    event.currentTarget.classList.toggle("fa-regular");
    event.currentTarget.classList.toggle("fa-solid");
    // event.currentTarget.parentElement.style.pointerEvents = "none";
    // console.log(event.currentTarget.parentElement)
  }
}
