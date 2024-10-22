import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "star"
  ]

  connect() {
    // this.element.textContent = "Hello World!"

  }

  toggle(event) {
    console.dir(event.currentTarget.form.method);
    if (event.currentTarget.classList.contains("active")) {
      // Do something if the class "active" is present
      console.log("test1")
      event.currentTarget.classList.add("fa-regular");
      event.currentTarget.classList.remove("fa-solid");
      event.currentTarget.classList.remove("active");
      } else {
        console.log("test2")
        event.currentTarget.classList.remove("fa-regular");
        event.currentTarget.classList.add("fa-solid");
        event.currentTarget.classList.add("active");
      }
    // event.currentTarget.parentElement.style.pointerEvents = "none";
    // console.log(event.currentTarget.parentElement)
  }
}
