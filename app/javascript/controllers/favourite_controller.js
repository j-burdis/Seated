import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star"]

  connect() {
    // this.element.textContent = "Hello World!"
  }

  // toggle(event) {
  //   event.preventDefault()
  //   const form = event.currentTarget.closest("form")

  //   fetch(form.action, {
  //     method: form.method,
  //     headers: { "X-Requested-With": "XMLHttpRequest" },
  //     body: new FormData(form)
  //   })
  //   .catch(error => console.error("Failed to toggle favorite:", error))
  // }
}
