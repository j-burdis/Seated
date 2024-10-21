import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = [
    "results"
  ]
  connect() {
   console.log("autocomplete")
   console.log(this.resultsTarget)
  }

  search(event) {
    const query = event.currentTarget.value

    // Exit early if the query is too short
    if (query.length < 3) {
      this.resultsTarget.innerHTML = ""
      return
    }

    const url = `http://localhost:3000/cinemas?query=${query}`

    fetch( url, {
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      this.resultsTarget.insertAdjacentHTML("beforeend", data.list)
    })
  }
}
